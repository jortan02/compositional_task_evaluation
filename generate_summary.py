import pandas as pd
import csv
import re
import os
import glob
# import statistics

class ModelResults:
    def _get_first_number(self, raw_predictions_list):
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
    
    def _get_all_numbers(self, raw_predictions_list):
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
    
    
    def _analyze_results(self, results_df, compare_type, accuracy_type="micro_average"):
        match compare_type:
            case "first_number":
                extract_function = self._get_first_number
            case "all_numbers":
                extract_function = self._get_all_numbers
            case _:
                raise NotImplementedError()
        
        match accuracy_type:
            case "macro_average":
                accuracy_function = self._get_first_number
            case "micro_average":
                accuracy_function = self._get_all_numbers
            case _:
                raise NotImplementedError()
            

        prediction_col_names=[col for col in results_df if col.startswith("prediction")]
        raw_predictions_list = results_df[prediction_col_names].values
        predictions_list = extract_function(raw_predictions_list)
        accuracy = accuracy_function(results_df["answer"], predictions_list)
        return accuracy
    
    def _get_aggregate_df(self, file_paths):
        results_df_list = [pd.read_csv(file, dtype={"question": "string", "answer": "string", "prediction": "string"}) for file in file_paths]
        aggregate_df = results_df_list[0].rename(columns={"prediction": f"prediction-{1}"})
        for index in range(1, len(results_df_list)):
            aggregate_df[f"prediction-{index + 1}"] = results_df_list[index]["prediction"]
        return aggregate_df
    
    def _df_equals(self, model, file_paths):
        print(model)
        results_df_list = [pd.read_csv(file, dtype={"question": "string", "answer": "string", "prediction": "string"}) for file in file_paths]
        results_df_0 = results_df_list[0]
        for results_df in results_df_list:
            print(results_df_0.equals(results_df))
    
    def __init__(self, model, prompt, file_paths, reason="", comments=""):
        self.model = model
        self.param_count = model_param_count_dict[model]
        self.prompt = prompt
        results_df = self._get_aggregate_df(file_paths)
        self.prompt_example = results_df.sample(1, random_state=0)["question"].item()
        self.test_count = len(results_df)
        self.first_any_accuracy = self._analyze_results(
            results_df, compare_type="first", accuracy_type="any")
        self.any_any_accuracy = self._analyze_results(
            results_df, compare_type="any", accuracy_type="any")
        self.first_mode_accuracy = self._analyze_results(
            results_df, compare_type="first", accuracy_type="mode")
        self.any_mode_accuracy = self._analyze_results(
            results_df, compare_type="any", accuracy_type="mode")
        self.first_majority_accuracy = self._analyze_results(
            results_df, compare_type="first", accuracy_type="majority")
        self.any_majority_accuracy = self._analyze_results(
            results_df, compare_type="any", accuracy_type="majority")
        self.reason = reason
        self.comments = comments

def multplication_experiment(model_name, results_list):
    results_list.append(
    ModelResults(
            model=model_name,
            prompt="Carry",
            file_paths=glob.glob(os.path.join(CARRY_PATH, model_name, "*.csv")),
            reason="Carry occurs in multiplication at some digits place is greater than 9."
        )
    )
    results_list.append(
        ModelResults(
            model=model_name,
            prompt="Concatenate",
            file_paths=glob.glob(os.path.join(CONCATENATE_PATH, model_name, "*.csv")),
            reason="The digits needs to be concatenated to the final answer."
        )
    )
    results_list.append(
        ModelResults(
            model=model_name,
            prompt="Multiply 1-digit",
            file_paths=glob.glob(os.path.join(MULTIPLY_1_DIGIT_PATH, model_name, "*.csv")),
            reason="Multiplication requires multiplying two values at some digits place."
        )
    )
    results_list.append(
        ModelResults(
            model=model_name,
            prompt="Sum",
            file_paths=glob.glob(os.path.join(SUM_PATH, model_name, "*.csv")),
            reason="Summation is done after carrying occurs."
        )
    )

# toy_result = ModelResults(
#         model="toy-model",
#         prompt="Toy",
#         file_paths=glob.glob(os.path.join("./results/toy/*.csv")),
#         reason="Used to check compare and accuracy types"
#     )
# results_list = [toy_result]

if __name__ == "__main__":
    PROMPT_TYPE = 1
    EXAMPLE_COUNT = 1
    save_path = f"summary_multiplication_pt_{PROMPT_TYPE}_ag_{EXAMPLE_COUNT}.csv"
    MULTIPLICATION_PATH = f"./results/multiplication/prompt_type_{PROMPT_TYPE}/aggregate_count_{EXAMPLE_COUNT}/"
    CARRY_PATH = os.path.join(MULTIPLICATION_PATH, "carry")
    CONCATENATE_PATH = os.path.join(MULTIPLICATION_PATH, "concatenate")
    MULTIPLY_PATH = os.path.join(MULTIPLICATION_PATH, "multiply")
    MULTIPLY_1_DIGIT_PATH = os.path.join(MULTIPLICATION_PATH, "multiply_1_digit")
    SUM_PATH = os.path.join(MULTIPLICATION_PATH, "sum")

    model_param_count_dict = {}
    # https://heidloff.net/article/running-llm-flan-t5-locally/
    model_param_count_dict["flan-t5-small"] = "80000000"
    model_param_count_dict["flan-t5-base"] = "248000000"
    model_param_count_dict["flan-t5-large"] = "780000000"
    model_param_count_dict["flan-t5-xl"] = "3000000000"
    model_param_count_dict["flan-t5-xxl"] = "11000000000"
    model_param_count_dict["toy-model"] = "0"

    results_list = []
    multplication_experiment("flan-t5-small", results_list)
    multplication_experiment("flan-t5-base", results_list)
    multplication_experiment("flan-t5-large", results_list)
    multplication_experiment("flan-t5-xl", results_list)
    multplication_experiment("flan-t5-xxl", results_list)

    summary_dict = {
        "model": [],
        "param_count": [],
        "prompt": [],
        "prompt_example": [],
        "test_count": [],
        "first_any_accuracy": [],
        "any_any_accuracy": [],
        "first_mode_accuracy": [],
        "any_mode_accuracy": [],
        "first_majority_accuracy": [],
        "any_majority_accuracy": [],
        "reason": [],
        "comments": [],
    }
    for result in results_list:
        summary_dict["model"].append(result.model)
        summary_dict["param_count"].append(result.param_count)
        summary_dict["prompt"].append(result.prompt)
        summary_dict["prompt_example"].append(result.prompt_example)
        summary_dict["test_count"].append(result.test_count)
        summary_dict["first_any_accuracy"].append(result.first_any_accuracy)
        summary_dict["any_any_accuracy"].append(result.any_any_accuracy)
        summary_dict["first_mode_accuracy"].append(result.first_mode_accuracy)
        summary_dict["any_mode_accuracy"].append(result.any_mode_accuracy)
        summary_dict["first_majority_accuracy"].append(result.first_majority_accuracy)
        summary_dict["any_majority_accuracy"].append(result.any_majority_accuracy)
        summary_dict["reason"].append(result.reason)
        summary_dict["comments"].append(result.comments)
        
    summary_df = pd.DataFrame(summary_dict)
    summary_df.to_csv(save_path, index=False)
