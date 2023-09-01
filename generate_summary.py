import pandas as pd

import analyze_results

MULTIPLICATION_PATH = "results/multiplication"
CARRY_PATH = f"{MULTIPLICATION_PATH}/carry"
CONCATENATE_PATH = f"{MULTIPLICATION_PATH}/concatenate"
MULTIPLY_PATH = f"{MULTIPLICATION_PATH}/multiply"
MULTIPLY_1_DIGIT_PATH = f"{MULTIPLICATION_PATH}/multiply_1_digit"
SUM_PATH = f"{MULTIPLICATION_PATH}/sum"

model_param_count_dict = {}
# https://heidloff.net/article/running-llm-flan-t5-locally/
model_param_count_dict["flan-t5-small"] = "80M params"
model_param_count_dict["flan-t5-base"] = "248M params"
model_param_count_dict["flan-t5-large"] = "780M params"
model_param_count_dict["flan-t5-xl"] = "3B params"
model_param_count_dict["flan-t5-xxl"] = "11B params"


class ModelResults:
    def __init__(self, model, prompt, file_path, reason="", comments=""):
        self.model = model
        self.param_count = model_param_count_dict[model]
        self.prompt = prompt
        results_df = pd.read_csv(file_path)
        self.prompt_example = results_df.sample(1, random_state=0)["question"].item()
        self.test_count = len(results_df)
        self.first_number_accuracy = analyze_results.analyze_results(
            file_path, "first")
        self.any_number_accuracy = analyze_results.analyze_results(
            file_path, "any")
        self.reason = reason
        self.comments = comments

def multplication_experiment(model_name, results_list):
    results_list.append(
    ModelResults(
        model=model_name,
        prompt="Carry",
        file_path=f"{CARRY_PATH}/{model_name}_carry.csv",
        reason="Carry occurs in multiplication at some digits place is greater than 9."
    )
)
    results_list.append(
    ModelResults(
        model=model_name,
        prompt="Concatenate",
        file_path=f"{CONCATENATE_PATH}/{model_name}_concatenate.csv",
        reason="The digits needs to be concatenated to the final answer."
    )
)
    results_list.append(
    ModelResults(
        model=model_name,
        prompt="Multiply",
        file_path=f"{MULTIPLY_PATH}/{model_name}_multiply.csv",
        reason="Multiplication is the compositional task."
    )
)
    results_list.append(
    ModelResults(
        model=model_name,
        prompt="Multiply 1-digit",
        file_path=f"{MULTIPLY_1_DIGIT_PATH}/{model_name}_multiply_1_digit.csv",
        reason="Multiplication requires multiplying two values at some digits place."
    )
)
    results_list.append(
    ModelResults(
        model=model_name,
        prompt="Sum",
        file_path=f"{SUM_PATH}/{model_name}_sum.csv",
        reason="Summation is done after carrying occurs."
    )
)

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
    "first_number_accuracy": [],
    "any_number_accuracy": [],
    "reason": [],
    "comments": [],
}
for result in results_list:
    summary_dict["model"].append(result.model)
    summary_dict["param_count"].append(result.param_count)
    summary_dict["prompt"].append(result.prompt)
    summary_dict["prompt_example"].append(result.prompt_example)
    summary_dict["test_count"].append(result.test_count)
    summary_dict["first_number_accuracy"].append(result.first_number_accuracy)
    summary_dict["any_number_accuracy"].append(result.any_number_accuracy)
    summary_dict["reason"].append(result.reason)
    summary_dict["comments"].append(result.comments)
    
summary_df = pd.DataFrame(summary_dict)
summary_df.to_csv("summaries.csv", index=False)