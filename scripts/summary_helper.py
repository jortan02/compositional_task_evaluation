from typing import Any, Callable
import numpy as np
import pandas as pd
import csv
import re
import os
import glob
import scipy.stats as stats

from datasets_helper import get_full_prompt


def _analyze_results(
    results_df: pd.DataFrame,
    extract_function: Callable[[list[list[str]]], list[list[Any]]],
    score_function: Callable[[list[str], list[list[Any]]], list[list[int | float]]],
    example_count: int,
) -> tuple[float, float, list[float]]:
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
    )  # dim (# of experiments w/ diff in-context examples) x (# of examples) x (# of runs)
    acc_per_experiment = np.mean(
        np.mean(performances.reshape((performances.shape[0], -1)), axis=1)
    )
    std_per_experiment = np.std(
        np.mean(performances.reshape((performances.shape[0], -1)), axis=1)
    )
    acc_per_example = np.mean(
        performances.transpose(1, 0, 2).reshape(performances.shape[1], -1), axis=1
    )
    return acc_per_experiment, std_per_experiment, acc_per_example


def _get_aggregate_df(file_paths: list[str], experiment_count: int = 10):
    results_df_list = [
        pd.read_csv(
            file,
            dtype={"answer": "string", "prediction": "string"},
            keep_default_na=False,
        )
        for file in file_paths
    ]
    if len(results_df_list) != experiment_count:
        raise Exception(
            f"Found {len(results_df_list)} files when {experiment_count} was expected!"
        )
    aggregate_df = results_df_list[0].rename(columns={"prediction": f"prediction-{1}"})
    for index in range(1, len(results_df_list)):
        aggregate_df[f"prediction-{index + 1}"] = results_df_list[index]["prediction"]
    return aggregate_df


def get_summary_dict(
    prompt_format,
    model: str,
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
    example_count: int = 5,
    baseline_perfs: list[float] = None,
) -> tuple[dict[str, any], dict[str, any]]:
    aggregate_df = _get_aggregate_df(experiment_paths)
    sample = aggregate_df.sample(1, random_state=0)
    prompt_example = get_full_prompt(
        prompt_format,
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
    summary["model"] = model
    summary["param_count"] = param_count
    summary["prompt"] = prompt
    summary["prompt_example"] = prompt_example
    summary["test_count"] = test_count

    accuracies = {}
    for name, extraction_function, score_function in extraction_score_functions:
        avg, std, perfs = _analyze_results(
            aggregate_df,
            extract_function=extraction_function,
            score_function=score_function,
            example_count=example_count,
        )
        summary[f"{name}_avg"] = avg
        summary[f"{name}_std"] = std
        summary[f"{name}_tt"] = (
            ""
            if baseline_perfs is None
            else stats.ttest_ind(perfs, baseline_perfs[name]).pvalue
        )
        accuracies[name] = perfs

    summary["reason"] = reason
    summary["comments"] = comments

    return summary, accuracies
