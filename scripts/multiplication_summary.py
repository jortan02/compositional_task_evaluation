# %%
from summary_helper import *
from datasets_helper import get_full_flan_t5_prompt, get_full_llama_2_chat_prompt_v3
from datetime import date

def multiplication_experiment(
    model_name: str, param_count: int, prompt_format
) -> list[dict[str, any]]:
    def is_correct(
        answers: list[str], predictions_list: list[list[set[str]]]
    ) -> list[list[int]]:
        results_list = []
        for index in range(len(answers)):
            results = []
            answer = answers[index]
            predictions = predictions_list[index]
            for prediction in predictions:
                if answer in prediction:
                    results.append(1)
                else:
                    results.append(0)
            results_list.append(results)
        return results_list

    def _get_first_number(
        raw_predictions_list: list[list[str]],
    ) -> list[list[set[str]]]:
        outcomes = []
        for raw_predictions in raw_predictions_list:
            extracted_predictions = []
            for raw_prediction in raw_predictions:
                numbers_in_prediction = re.findall(
                    r"(?<!\d)([-]?\d*\.?\d+)", str(raw_prediction).replace(",", "") # Remove commas in numbers
                )
                if len(numbers_in_prediction) == 0:
                    extracted_predictions.append("")
                    continue
                first_number = {numbers_in_prediction[0]}
                extracted_predictions.append(first_number)
            outcomes.append(extracted_predictions)
        return outcomes

    def _get_all_numbers(raw_predictions_list: list[list[str]]) -> list[list[set[str]]]:
        outcomes = []
        for raw_predictions in raw_predictions_list:
            extracted_predictions = []
            for raw_prediction in raw_predictions:
                numbers_in_prediction = re.findall(
                    r"(?<!\d)([-]?\d*\.?\d+)", str(raw_prediction).replace(",", "")
                )
                if len(numbers_in_prediction) == 0:
                    extracted_predictions.append("")
                    continue
                any_numbers = set(numbers_in_prediction)
                extracted_predictions.append(any_numbers)
            outcomes.append(extracted_predictions)
        return outcomes

    MULTIPLICATION_PATH = f"../results/multiplication/"
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
    extraction_score_functions = [
        ("first_micro", _get_first_number, is_correct),
        ("any_micro", _get_all_numbers, is_correct),
    ]
    results_list.append(
        get_summary_dict(
            experiment="Multiplication",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Carry",
            experiment_paths=get_file_paths(os.path.join(CARRY_PATH, model_name, "*.csv")),
            reason="Carry occurs in multiplication at some digits place is greater than 9.",
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="Multiplication",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Concatenate",
            experiment_paths=get_file_paths(
                os.path.join(CONCATENATE_PATH, model_name, "*.csv")
            ),
            reason="The digits needs to be concatenated to the final answer.",
        )
    )

    multiply = get_summary_dict(
        experiment="Multiplication",
        prompt_format=prompt_format,
        model=model_name,
        param_count=param_count,
        extraction_score_functions=extraction_score_functions,
        prompt="Multiply",
        experiment_paths=get_file_paths(os.path.join(MULTIPLY_PATH, model_name, "*.csv")),
        reason="Multiplication is the compositional task.",
    )
    results_list.append(multiply)

    results_list.append(
        get_summary_dict(
            experiment="Multiplication",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Multiply + carry",
            experiment_paths=get_file_paths(
                os.path.join(MULTIPLY_PRIMED_1_PATH, model_name, "*.csv")
            ),
            reason="Multiplication is the compositional task. We are priming multiplication with carry because multiplication depends on this subtask.",
            baseline_perfs=multiply[1],
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="Multiplication",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Multiply + concatenate",
            experiment_paths=get_file_paths(
                os.path.join(MULTIPLY_PRIMED_2_PATH, model_name, "*.csv")
            ),
            reason="Multiplication is the compositional task. We are priming multiplication with concatenate because multiplication depends on this subtask.",
            baseline_perfs=multiply[1],
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="Multiplication",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Multiply + multiply with 1 digit",
            experiment_paths=get_file_paths(
                os.path.join(MULTIPLY_PRIMED_3_PATH, model_name, "*.csv")
            ),
            reason="Multiplication is the compositional task. We are priming multiplication with multiplication of 1 digit numbers because multiplication depends on this subtask.",
            baseline_perfs=multiply[1],
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="Multiplication",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Multiply + sum",
            experiment_paths=get_file_paths(
                os.path.join(MULTIPLY_PRIMED_4_PATH, model_name, "*.csv")
            ),
            reason="Multiplication is the compositional task. We are priming multiplication with summation of numbers up to 2 digits because multiplication depends on this subtask.",
            baseline_perfs=multiply[1],
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="Multiplication",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Multiply + exponentiate",
            experiment_paths=get_file_paths(
                os.path.join(MULTIPLY_PRIMED_5_PATH, model_name, "*.csv")
            ),
            reason="Multiplication is the compositional task. We are priming multiplication with exponentiate to see if the performance stays the same or get worse because this task is not required for multiplication.",
            baseline_perfs=multiply[1],
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="Multiplication",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Multiply + subtract",
            experiment_paths=get_file_paths(
                os.path.join(MULTIPLY_PRIMED_6_PATH, model_name, "*.csv")
            ),
            reason="Multiplication is the compositional task. We are priming multiplication with subtraction to see if the performance stays the same or get worse because this task is not required for multiplication.",
            baseline_perfs=multiply[1],
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="Multiplication",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Multiply + reverse",
            experiment_paths=get_file_paths(
                os.path.join(MULTIPLY_PRIMED_7_PATH, model_name, "*.csv")
            ),
            reason="Multiplication is the compositional task. We are priming multiplication with string reverse to see if the performance stays the same or get worse because this task is not required for multiplication.",
            baseline_perfs=multiply[1],
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="Multiplication",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Multiply 1-digit",
            experiment_paths=get_file_paths(
                os.path.join(MULTIPLY_1_DIGIT_PATH, model_name, "*.csv")
            ),
            reason="Multiplication requires multiplying two values at some digits place.",
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="Multiplication",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Sum",
            experiment_paths=get_file_paths(os.path.join(SUM_PATH, model_name, "*.csv")),
            reason="Summation is done after carrying occurs.",
        )
    )
    return results_list

# %%
save_path = f"../summaries/{date.today().strftime('%Y-%m-%d')}-multiplication_summary.csv"

# https://heidloff.net/article/running-llm-flan-t5-locally/
results_list = []
results_list.extend(multiplication_experiment("google/flan-t5-small", 80000000, get_full_flan_t5_prompt))
results_list.extend(multiplication_experiment("google/flan-t5-base", 248000000, get_full_flan_t5_prompt))
results_list.extend(multiplication_experiment("google/flan-t5-large", 780000000, get_full_flan_t5_prompt))
results_list.extend(multiplication_experiment("google/flan-t5-xl", 3000000000, get_full_flan_t5_prompt))
results_list.extend(multiplication_experiment("google/flan-t5-xxl", 11000000000, get_full_flan_t5_prompt))

results_list.extend(
    multiplication_experiment("meta-llama/Llama-2-7b-chat-hf", 7000000000, get_full_llama_2_chat_prompt_v3)
)
results_list.extend(
    multiplication_experiment("meta-llama/Llama-2-13b-chat-hf", 13000000000, get_full_llama_2_chat_prompt_v3)
)

summary_df = pd.DataFrame([results[0] for results in results_list])
summary_df.to_csv(save_path, index=False)


# %%
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd
import os

for index in range(len(results_list)):
    for key, value in results_list[index][1].items():
        results_list[index][0][f"{key}_acc"] = value
        
summary_perf_df = pd.DataFrame([results[0] for results in results_list])
summary_perf_df = summary_perf_df.apply(pd.Series.explode)
for col in summary_perf_df:
    if col.endswith("_acc"):
        summary_perf_df[col] = summary_perf_df[col].astype("float")


# %%
output_path = os.path.splitext(save_path)[0]
os.makedirs(output_path, exist_ok=True)
for subexperiment in pd.unique(summary_perf_df["prompt"]):
    experiment_df = summary_perf_df[summary_perf_df["prompt"] == subexperiment].reset_index()
    experiment = experiment_df['experiment'][0]
    for acc in [col for col in experiment_df if col.endswith("_acc")]:
        sns.boxplot(experiment_df, x=acc, y="model", orient='h').set(title=f"{experiment}: {subexperiment}")
        plt.savefig(os.path.join(os.path.splitext(save_path)[0], f"{experiment} - {subexperiment} - {acc}.png"), bbox_inches="tight")
        plt.close()

# %%
multiply_primed_names = {'Multiply', 'Multiply + carry',
       'Multiply + concatenate',
       'Multiply + multiply with 1 digit',
       'Multiply + sum', 'Multiply + exponentiate',
       'Multiply + subtract', 'Multiply + reverse'}

summary_primed_df = summary_perf_df[summary_perf_df["prompt"].isin(multiply_primed_names)].reset_index()
for model_name in pd.unique(summary_primed_df["model"]):
    experiment_df = summary_primed_df[summary_primed_df["model"] == model_name].reset_index()
    experiment = experiment_df['experiment'][0]
    for acc in [col for col in experiment_df if col.endswith("_acc")]:
        sns.boxplot(experiment_df, x=acc, y="prompt", orient='h').set(title=f"{experiment} Compositional: {model_name}")
        plt.savefig(os.path.join(os.path.splitext(save_path)[0], f"{model_name.split('/')[-1]} - {experiment} Compositional - {acc}.png"), bbox_inches="tight")
        plt.close()


