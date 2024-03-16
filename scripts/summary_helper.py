from typing import Any, Callable
import numpy as np
import pandas as pd
import csv
import re
import os
import glob
import scipy.stats as stats

from datasets_helper import get_full_prompt


def get_file_paths(glob_path: str, limit: int = 5):
    return glob.glob(glob_path)[:limit]


def _analyze_results(
    results_df: pd.DataFrame,
    extract_function: Callable[[list[list[str]]], list[list[Any]]],
    score_function: Callable[[list[str], list[list[Any]]], list[list[int | float]]],
    example_count: int,
) -> tuple[float, float, list[float]]:
    """_summary_

    Args:
        results_df (pd.DataFrame): The results DataFrame: expects prediction-x columns for predictions (where x is a number) and an answer column.
        extract_function (Callable[[list[list[str]]], list[list[Any]]]): The extract function extracts the values to be evaluated in the prediction string.
        score_function (Callable[[list[str], list[list[Any]]], list[list[int  |  float]]]): The score function takes in the answers from the answer column 
            and the extracted values from the extraction function and returns a score.
            Expects a return list format of shape (# of experiments w/ diff in-context examples) x (# of prompts) x (# of runs).
        example_count (int): How many in-context examples are in the DataFrame.

    Returns:
        tuple[float, float, list[float]]: Results of the experiment analysis.
    """
    experiment_df_list: list[pd.DataFrame] = np.split(results_df, example_count)
    performances = []
    questions = experiment_df_list[0]["question"]
    for experiment_df in experiment_df_list:
        experiment_df = experiment_df.reset_index()
        assert questions.equals(experiment_df["question"])
        prediction_col_names = [
            col for col in experiment_df if col.startswith("prediction")
        ]
        raw_predictions_list = experiment_df[prediction_col_names].values
        predictions_list = extract_function(raw_predictions_list)
        answers = experiment_df["answer"].values
        performances.append(score_function(answers, predictions_list))
    performances = np.array(
        performances
    )
    # dim (# of experiments w/ diff in-context examples) x (# of prompts) x (# of runs)
    acc_per_experiment = np.mean(performances.reshape((performances.shape[0], -1)), axis=1)
    acc_per_example = np.mean(
        performances.transpose(1, 0, 2).reshape(performances.shape[1], -1), axis=1
    )
    return acc_per_experiment, acc_per_example


def _get_aggregate_df(file_paths: list[str]):
    results_df_list = [
        pd.read_csv(
            file,
            dtype="str",
            keep_default_na=False,
        )
        for file in file_paths
    ]
    aggregate_df = results_df_list[0].rename(columns={"prediction": f"prediction-{1}"})
    for index in range(1, len(results_df_list)):
        aggregate_df[f"prediction-{index + 1}"] = results_df_list[index]["prediction"]
    return aggregate_df


def get_summary_dict(
    experiment: str,
    model: str,
    prompt_format,
    param_count: str,
    prompt: str,
    experiment_paths: list[str],
    extraction_score_functions: list[
        tuple[
            str,
            Callable[[list[list[str]]], list[list[Any]]],
            Callable[[list[str], list[list[Any]]], list[list[int | float]]],
        ]
    ],
    reason="",
    comments="",
    example_count: int = 5,  # Examples could be duplicates, so checking for distinct examples may not work
    baseline_perfs: list[float] = None,
) -> tuple[dict[str, any], dict[str, any]]:
    aggregate_df = _get_aggregate_df(experiment_paths)
    sample = aggregate_df.sample(1, random_state=0)
    prompt_example = prompt_format(
        instruction=sample["instruction"].item(),
        question=sample["question"].item(),
        example_question=sample["example_question"].item(),
        example_answer=sample["example_answer"].item(),
        priming_instruction=sample["priming_instruction"].item(),
        priming_question=sample["priming_question"].item(),
        priming_answer=sample["priming_answer"].item(),
    )

    test_count = len(aggregate_df) / example_count

    summary = {}
    summary["experiment"] = experiment
    summary["model"] = model
    summary["param_count"] = param_count
    summary["prompt"] = prompt
    summary["prompt_example"] = prompt_example
    summary["test_count"] = test_count

    accuracies = {}
    for name, extraction_function, score_function in extraction_score_functions:
        acc_per_experiment, acc_per_example = _analyze_results(
            aggregate_df,
            extract_function=extraction_function,
            score_function=score_function,
            example_count=example_count,
        )
        summary[f"{name}_avg"] = np.mean(acc_per_experiment)
        summary[f"{name}_std"] = np.std(acc_per_experiment)
        summary[f"{name}_tt"] = (
            ""
            if baseline_perfs is None
            else stats.ttest_ind(acc_per_example, baseline_perfs[name]).pvalue
        )
        accuracies[name] = acc_per_experiment

    summary["reason"] = reason
    summary["comments"] = comments

    return summary, accuracies
