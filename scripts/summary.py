import numpy as np
import pandas as pd
import csv
import re
import os
import glob
import scipy.stats as stats

from datasets_helper import prompt_format


def _analyze_results(
    results_df: pd.DataFrame, compare_type: str, accuracy_type: str, example_count: int
) -> tuple[float, float, list[float]]:
    def _get_first_number(raw_predictions_list: list[list[str]]) -> list[set[str]]:
        outcomes = []
        for raw_predictions in raw_predictions_list:
            extracted_predictions = []
            for raw_prediction in raw_predictions:
                numbers_in_prediction = re.findall(
                    r"(?<!\d)([-]?\d*\.?\d+)", str(raw_prediction)
                )
                if len(numbers_in_prediction) == 0:
                    extracted_predictions.append("")
                    continue
                first_number = {numbers_in_prediction[0]}
                extracted_predictions.append(first_number)
            outcomes.append(extracted_predictions)
        return outcomes

    def _get_all_numbers(raw_predictions_list: list[list[str]]) -> list[set[str]]:
        outcomes = []
        for raw_predictions in raw_predictions_list:
            extracted_predictions = []
            for raw_prediction in raw_predictions:
                numbers_in_prediction = re.findall(
                    r"(?<!\d)([-]?\d*\.?\d+)", str(raw_prediction)
                )
                if len(numbers_in_prediction) == 0:
                    extracted_predictions.append("")
                    continue
                any_numbers = set(numbers_in_prediction)
                extracted_predictions.append(any_numbers)
            outcomes.append(extracted_predictions)
        return outcomes

    def _get_macro_average(
        answers: pd.DataFrame, predictions_list: list[list[set[str]]]
    ) -> float:
        assert len(answers) == len(predictions_list)
        averages_sum = 0
        total_prompts = len(answers)
        for index in range(len(answers)):
            correct_count = 0
            predictions = predictions_list[index]
            total_responses = len(predictions)
            for prediction in predictions:
                if answers[index] in prediction:
                    correct_count += 1
            averages_sum += correct_count / total_responses
        return averages_sum / total_prompts

    def _get_micro_average(
        answers: pd.DataFrame, predictions_list: list[list[set[str]]]
    ) -> float:
        assert len(answers) == len(predictions_list)
        count = 0
        correct_count = 0
        total_responses = len(predictions_list) * len(predictions_list[0])
        for index in range(len(answers)):
            predictions = predictions_list[index]
            for prediction in predictions:
                if answers[index] in prediction:
                    correct_count += 1
                count += 1
        return correct_count / total_responses

    match compare_type:
        case "first_number":
            extract_function = _get_first_number
        case "all_numbers":
            extract_function = _get_all_numbers
        case _:
            raise NotImplementedError()

    match accuracy_type:
        case "macro_average":
            accuracy_function = _get_macro_average
        case "micro_average":
            accuracy_function = _get_micro_average
        case _:
            raise NotImplementedError()
    experiment_df_list = np.split(results_df, example_count)
    accuracies = []
    for experiment_df in experiment_df_list:
        print(experiment_df.head)
        experiment_df = experiment_df.reset_index()
        prediction_col_names = [
            col for col in experiment_df if col.startswith("prediction")
        ]
        raw_predictions_list = experiment_df[prediction_col_names].values
        predictions_list = extract_function(raw_predictions_list)
        accuracy = accuracy_function(experiment_df["answer"], predictions_list)
        accuracies.append(accuracy)
    accuracy_avg = np.mean(accuracies)
    accuracy_std = np.std(accuracies)
    return accuracy_avg, accuracy_std, accuracies

def _get_aggregate_df(file_paths: list[str], experiment_count: int = 10):
    results_df_list = [
        pd.read_csv(file, dtype={"answer": "string", "prediction": "string"})
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


def _get_summary_dict(
    model: str,
    param_count: str,
    prompt,
    file_paths: list[str],
    reason="",
    comments="",
    example_count: int = 5,
    baseline_accs: list[float] = None,
) -> tuple[dict[str, any], dict[str, any]]:
    aggregate_df = _get_aggregate_df(file_paths)
    sample = aggregate_df.sample(1, random_state=0)
    prompt_example = prompt_format(
        priming="" if "priming" not in sample else sample["priming"].item(),
        instruction=sample["instruction"].item(),
        example=sample["example"].item(),
        question=sample["question"].item(),
    )
    test_count = len(aggregate_df) / example_count
    first_micro_avg, first_micro_std, first_micro_accs = _analyze_results(
        aggregate_df,
        compare_type="first_number",
        accuracy_type="micro_average",
        example_count=example_count,
    )
    all_micro_avg, all_micro_std, all_micro_accs = _analyze_results(
        aggregate_df,
        compare_type="all_numbers",
        accuracy_type="micro_average",
        example_count=example_count,
    )
    first_macro_avg, first_macro_std, first_macro_accs = _analyze_results(
        aggregate_df,
        compare_type="first_number",
        accuracy_type="macro_average",
        example_count=example_count,
    )
    all_macro_avg, all_macro_std, all_macro_accs = _analyze_results(
        aggregate_df,
        compare_type="all_numbers",
        accuracy_type="macro_average",
        example_count=example_count,
    )

    summary = {}
    summary["model"] = model
    summary["param_count"] = param_count
    summary["prompt"] = prompt
    summary["prompt_example"] = prompt_example
    summary["test_count"] = test_count

    summary["first_micro_avg"] = first_micro_avg
    summary["first_micro_std"] = first_micro_std
    summary["first_micro_tt"] = (
        ""
        if baseline_accs is None
        else stats.ttest_ind(first_micro_accs, baseline_accs["first_micro_accs"]).pvalue
    )

    summary["all_micro_avg"] = all_micro_avg
    summary["all_micro_std"] = all_micro_std
    summary["all_micro_tt"] = (
        ""
        if baseline_accs is None
        else stats.ttest_ind(all_micro_accs, baseline_accs["all_micro_accs"]).pvalue
    )

    summary["first_macro_avg"] = first_macro_avg
    summary["first_macro_std"] = first_macro_std
    summary["first_macro_tt"] = (
        ""
        if baseline_accs is None
        else stats.ttest_ind(first_macro_accs, baseline_accs["first_macro_accs"]).pvalue
    )

    summary["all_macro_avg"] = all_macro_avg
    summary["all_macro_std"] = all_macro_std
    summary["all_macro_tt"] = (
        ""
        if baseline_accs is None
        else stats.ttest_ind(all_macro_accs, baseline_accs["all_macro_accs"]).pvalue
    )

    summary["reason"] = reason
    summary["comments"] = comments

    accuracies = {}
    accuracies["first_micro_accs"] = first_micro_accs
    accuracies["all_micro_accs"] = all_micro_accs
    accuracies["first_macro_accs"] = first_macro_accs
    accuracies["all_macro_accs"] = all_macro_accs
    return summary, accuracies


def multplication_experiment(model_name: str, param_count: int) -> list[dict[str, any]]:
    INSTRUCTION_TYPE = 1
    PROMPT_TYPE = 1
    MULTIPLICATION_PATH = f"../results/multiplication/instruction_type-{INSTRUCTION_TYPE}/prompt_type-{PROMPT_TYPE}/"
    CARRY_PATH = os.path.join(MULTIPLICATION_PATH, "carry")
    CONCATENATE_PATH = os.path.join(MULTIPLICATION_PATH, "concatenate")
    MULTIPLY_PATH = os.path.join(MULTIPLICATION_PATH, "multiply")
    MULTIPLY_PRIMED_1_PATH = os.path.join(MULTIPLICATION_PATH, "multiply-primed-1")
    MULTIPLY_PRIMED_2_PATH = os.path.join(MULTIPLICATION_PATH, "multiply-primed-2")
    MULTIPLY_PRIMED_3_PATH = os.path.join(MULTIPLICATION_PATH, "multiply-primed-3")
    MULTIPLY_PRIMED_4_PATH = os.path.join(MULTIPLICATION_PATH, "multiply-primed-4")
    MULTIPLY_PRIMED_5_PATH = os.path.join(MULTIPLICATION_PATH, "multiply-primed-5")
    MULTIPLY_PRIMED_6_PATH = os.path.join(MULTIPLICATION_PATH, "multiply-primed-6")
    MULTIPLY_PRIMED_7_PATH = os.path.join(MULTIPLICATION_PATH, "multiply-primed-7")
    MULTIPLY_1_DIGIT_PATH = os.path.join(MULTIPLICATION_PATH, "multiply-1-digit")
    SUM_PATH = os.path.join(MULTIPLICATION_PATH, "sum")

    results_list = []
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Carry",
            file_paths=glob.glob(os.path.join(CARRY_PATH, model_name, "*.csv")),
            reason="Carry occurs in multiplication at some digits place is greater than 9.",
        )[0]
    )
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Concatenate",
            file_paths=glob.glob(os.path.join(CONCATENATE_PATH, model_name, "*.csv")),
            reason="The digits needs to be concatenated to the final answer.",
        )[0]
    )

    multiply_dict, multiply_accs = _get_summary_dict(
        model=model_name,
        param_count=param_count,
        prompt="Multiply",
        file_paths=glob.glob(os.path.join(MULTIPLY_PATH, model_name, "*.csv")),
        reason="Multiplication is the compositional task.",
    )
    results_list.append(multiply_dict)

    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Multiply, primed with carry",
            file_paths=glob.glob(
                os.path.join(MULTIPLY_PRIMED_1_PATH, model_name, "*.csv")
            ),
            reason="Multiplication is the compositional task. We are priming multiplication with carry because multiplication depends on this subtask.",
            baseline_accs=multiply_accs,
        )[0]
    )
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Multiply, primed with concatenate",
            file_paths=glob.glob(
                os.path.join(MULTIPLY_PRIMED_2_PATH, model_name, "*.csv")
            ),
            reason="Multiplication is the compositional task. We are priming multiplication with concatenate because multiplication depends on this subtask.",
            baseline_accs=multiply_accs,
        )[0]
    )
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Multiply, primed with multiply with 1 digit",
            file_paths=glob.glob(
                os.path.join(MULTIPLY_PRIMED_3_PATH, model_name, "*.csv")
            ),
            reason="Multiplication is the compositional task. We are priming multiplication with multiplication of 1 digit numbers because multiplication depends on this subtask.",
            baseline_accs=multiply_accs,
        )[0]
    )
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Multiply, primed with sum",
            file_paths=glob.glob(
                os.path.join(MULTIPLY_PRIMED_4_PATH, model_name, "*.csv")
            ),
            reason="Multiplication is the compositional task. We are priming multiplication with summation of numbers up to 2 digits because multiplication depends on this subtask.",
            baseline_accs=multiply_accs,
        )[0]
    )
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Multiply, primed with exponentiate",
            file_paths=glob.glob(
                os.path.join(MULTIPLY_PRIMED_5_PATH, model_name, "*.csv")
            ),
            reason="Multiplication is the compositional task. We are priming multiplication with exponentiate to see if the performance stays the same or get worse because this task is not required for multiplication.",
            baseline_accs=multiply_accs,
        )[0]
    )
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Multiply, primed with subtract",
            file_paths=glob.glob(
                os.path.join(MULTIPLY_PRIMED_6_PATH, model_name, "*.csv")
            ),
            reason="Multiplication is the compositional task. We are priming multiplication with subtraction to see if the performance stays the same or get worse because this task is not required for multiplication.",
            baseline_accs=multiply_accs,
        )[0]
    )
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Multiply, primed with reverse",
            file_paths=glob.glob(
                os.path.join(MULTIPLY_PRIMED_7_PATH, model_name, "*.csv")
            ),
            reason="Multiplication is the compositional task. We are priming multiplication with string reverse to see if the performance stays the same or get worse because this task is not required for multiplication.",
            baseline_accs=multiply_accs,
        )[0]
    )
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Multiply 1-digit",
            file_paths=glob.glob(
                os.path.join(MULTIPLY_1_DIGIT_PATH, model_name, "*.csv")
            ),
            reason="Multiplication requires multiplying two values at some digits place.",
        )[0]
    )
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Sum",
            file_paths=glob.glob(os.path.join(SUM_PATH, model_name, "*.csv")),
            reason="Summation is done after carrying occurs.",
        )[0]
    )
    return results_list


if __name__ == "__main__":
    save_path = f"summary.csv"

    # https://heidloff.net/article/running-llm-flan-t5-locally/
    results_list = []
    results_list.extend(multplication_experiment("google/flan-t5-small", 80000000))
    results_list.extend(multplication_experiment("google/flan-t5-base", 248000000))
    results_list.extend(multplication_experiment("google/flan-t5-large", 780000000))
    results_list.extend(multplication_experiment("google/flan-t5-xl", 3000000000))
    results_list.extend(multplication_experiment("google/flan-t5-xxl", 11000000000))

    summary_df = pd.DataFrame(results_list)
    summary_df.to_csv(save_path, index=False)
