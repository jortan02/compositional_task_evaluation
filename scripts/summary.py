import pandas as pd
import csv
import re
import os
import glob

def _get_summary_dict(model: str, param_count: str, prompt, file_paths:list[str], reason="", comments="") -> dict[str, any]:
    def _analyze_results(results_df: pd.DataFrame, compare_type: str, accuracy_type: str="micro_average") -> float:
        def _get_first_number(raw_predictions_list: list[list[str]]) -> list[set[str]]:
            outcomes = []
            for raw_predictions in raw_predictions_list:
                extracted_predictions = []
                for raw_prediction in raw_predictions:
                    numbers_in_prediction = re.findall(r"(?<!\d)([-]?\d*\.?\d+)", str(raw_prediction))
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
                    numbers_in_prediction = re.findall(r"(?<!\d)([-]?\d*\.?\d+)", str(raw_prediction))
                    if len(numbers_in_prediction) == 0:
                        extracted_predictions.append("")
                        continue
                    any_numbers = set(numbers_in_prediction)
                    extracted_predictions.append(any_numbers)
                outcomes.append(extracted_predictions)
            return outcomes
        
        def _get_macro_average(answers: list[str], predictions_list: list[list[set[str]]]) -> float:
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
        
        def _get_micro_average(answers: list[str], predictions_list: list[list[set[str]]]) -> float:
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
            
        prediction_col_names = [col for col in results_df if col.startswith("prediction")]
        raw_predictions_list = results_df[prediction_col_names].values
        predictions_list = extract_function(raw_predictions_list)
        accuracy = accuracy_function(results_df["answer"], predictions_list)
        return accuracy

    def _get_aggregate_df(file_paths: list[str], experiment_count: int=10):
        results_df_list = [pd.read_csv(file, dtype={"question": "string", "answer": "string", "prediction": "string"}) for file in file_paths]
        if len(results_df_list) != experiment_count:
            raise Exception(f"Found {len(results_df_list)} files when {experiment_count} was expected!")
        aggregate_df = results_df_list[0].rename(columns={"prediction": f"prediction-{1}"})
        for index in range(1, len(results_df_list)):
            aggregate_df[f"prediction-{index + 1}"] = results_df_list[index]["prediction"]
        return aggregate_df

    results_df = _get_aggregate_df(file_paths)
    prompt_example = results_df.sample(1, random_state=0)["question"].item()
    test_count = len(results_df)
    first_micro = _analyze_results(results_df, compare_type="first_number", accuracy_type="micro_average")
    any_micro = _analyze_results(results_df, compare_type="all_numbers", accuracy_type="micro_average")
    first_macro = _analyze_results(results_df, compare_type="first_number", accuracy_type="macro_average")
    any_macro = _analyze_results(results_df, compare_type="all_numbers", accuracy_type="macro_average")
    
    summary = {}
    summary["model"] = model
    summary["param_count"] = param_count
    summary["prompt"] = prompt
    summary["prompt_example"] = prompt_example
    summary["test_count"] = test_count
    summary["first_micro"] = first_micro
    summary["all_micro"] = any_micro
    summary["first_macro"] = first_macro
    summary["all_macro"] = any_macro
    summary["reason"] = reason
    summary["comments"] = comments
    return summary

def multplication_experiment(model_name: str, param_count: int) -> list[dict[str, any]]:
    INSTRUCTION_TYPE = 1
    PROMPT_TYPE = 1
    MULTIPLICATION_PATH = f"../results/multiplication/instruction_type-{INSTRUCTION_TYPE}/prompt_type-{PROMPT_TYPE}/"
    CARRY_PATH = os.path.join(MULTIPLICATION_PATH, "carry")
    CONCATENATE_PATH = os.path.join(MULTIPLICATION_PATH, "concatenate")
    MULTIPLY_PATH = os.path.join(MULTIPLICATION_PATH, "multiply")
    MULTIPLY_1_DIGIT_PATH = os.path.join(MULTIPLICATION_PATH, "multiply-1-digit")
    SUM_PATH = os.path.join(MULTIPLICATION_PATH, "sum")
    
    results_list = []
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Carry",
            file_paths=glob.glob(os.path.join(CARRY_PATH, model_name, "*.csv")),
            reason="Carry occurs in multiplication at some digits place is greater than 9."
        )
    )
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Concatenate",
            file_paths=glob.glob(os.path.join(CONCATENATE_PATH, model_name, "*.csv")),
            reason="The digits needs to be concatenated to the final answer."
        )
    )
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Multiply",
            file_paths=glob.glob(os.path.join(MULTIPLY_PATH, model_name, "*.csv")),
            reason="Multiplication is the compositional task."
        )
    )
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Multiply 1-digit",
            file_paths=glob.glob(os.path.join(MULTIPLY_1_DIGIT_PATH, model_name, "*.csv")),
            reason="Multiplication requires multiplying two values at some digits place."
        )
    )
    results_list.append(
        _get_summary_dict(
            model=model_name,
            param_count=param_count,
            prompt="Sum",
            file_paths=glob.glob(os.path.join(SUM_PATH, model_name, "*.csv")),
            reason="Summation is done after carrying occurs."
        )
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
