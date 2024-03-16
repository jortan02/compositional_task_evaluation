# %%
from datetime import date
from datasets_helper import get_full_flan_t5_prompt, get_full_llama_2_chat_prompt_v3
from summary_helper import *


def string_experiment(
    model_name: str, param_count: int, prompt_format
) -> list[dict[str, any]]:
    def is_exact(
        answers: list[str], predictions_list: list[list[str]]
    ) -> list[list[int]]:
        results_list = []
        for index in range(len(answers)):
            results = []
            answer = answers[index]
            predictions = predictions_list[index]
            for prediction in predictions:
                if (
                    answer in prediction
                    and ", " + answer not in prediction
                    and answer + ", " not in prediction
                ):  # Sublists are not counted correct
                    results.append(1)
                else:
                    results.append(0)
            results_list.append(results)
        return results_list

    def _get_string(
        raw_predictions_list: list[list[str]],
    ) -> list[list[str]]:
        return raw_predictions_list

    def is_in_order(
        answers: list[str], predictions_list: list[list[list[str]]]
    ) -> list[list[int]]:
        def is_sublist(answer, prediction):
            for index in range(len(prediction) - len(answer) + 1):
                if prediction[index : index + len(answer)] == answer:
                    return True
            return False

        results_list = []
        for index in range(len(answers)):
            results = []
            answer = re.sub(r"[^a-zA-Z0-9]", " ", answers[index]).split()
            predictions = predictions_list[index]
            for prediction in predictions:
                if is_sublist(answer, prediction):
                    results.append(1)
                else:
                    results.append(0)
            results_list.append(results)
        return results_list

    def _get_word_list(
        raw_predictions_list: list[list[str]],
    ) -> list[list[list[str]]]:
        outcomes = []
        for raw_predictions in raw_predictions_list:
            extracted_predictions = []
            for raw_prediction in raw_predictions:
                word_list = re.sub(r"[^a-zA-Z0-9]", " ", raw_prediction).split()
                extracted_predictions.append(word_list)
            outcomes.append(extracted_predictions)
        return outcomes

    STRING_PATH = f"../results/string-v2/"
    CONCATENATE_PATH = os.path.join(STRING_PATH, "concatenate")
    REMOVE_FIRST_PATH = os.path.join(STRING_PATH, "remove-first")
    UPPERCASE_PATH = os.path.join(STRING_PATH, "uppercase")
    WLO_PATH = os.path.join(STRING_PATH, "wlo")
    WLO_PRIMED_1_PATH = os.path.join(STRING_PATH, "wlo-primed-1")
    WLO_PRIMED_2_PATH = os.path.join(STRING_PATH, "wlo-primed-2")
    WLO_PRIMED_3_PATH = os.path.join(STRING_PATH, "wlo-primed-3")
    WLO_PRIMED_4_PATH = os.path.join(STRING_PATH, "wlo-primed-4")
    WLO_PRIMED_5_PATH = os.path.join(STRING_PATH, "wlo-primed-5")
    WLO_PRIMED_6_PATH = os.path.join(STRING_PATH, "wlo-primed-6")

    results_list = []
    extraction_score_functions = [("exact_micro", _get_string, is_exact), ("in_order_micro", _get_word_list, is_in_order)]

    results_list.append(
        get_summary_dict(
            experiment="String",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Uppercase",
            experiment_paths=get_file_paths(
                os.path.join(UPPERCASE_PATH, model_name, "*.csv")
            ),
            reason="Uppercase capitalizes all the letters in a word for each word in the word list.",
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="String",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Concatenate",
            experiment_paths=get_file_paths(
                os.path.join(CONCATENATE_PATH, model_name, "*.csv")
            ),
            reason="Concatenate extends the first word list to include the words in the second word list.",
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="String",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Remove First",
            experiment_paths=get_file_paths(
                os.path.join(REMOVE_FIRST_PATH, model_name, "*.csv")
            ),
            reason="Remove First removes the first word in the word list.",
        )
    )

    string = get_summary_dict(
        experiment="String",
        prompt_format=prompt_format,
        model=model_name,
        param_count=param_count,
        extraction_score_functions=extraction_score_functions,
        prompt="WLO",
        experiment_paths=get_file_paths(os.path.join(WLO_PATH, model_name, "*.csv")),
        reason="WLO is a word list operation that is the compositional task. It requires the first word list to be uppercased, the second word list to have the first word removed, and one to concatenate the two sub results.",
    )
    results_list.append(string)

    results_list.append(
        get_summary_dict(
            experiment="String",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="WLO + uppercase",
            experiment_paths=get_file_paths(
                os.path.join(WLO_PRIMED_1_PATH, model_name, "*.csv")
            ),
            reason="WLO is a word list operation that is the compositional task. We are priming WLO with uppercase because WLO depends on this subtask.",
            baseline_perfs=string[1],
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="String",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="WLO + remove first",
            experiment_paths=get_file_paths(
                os.path.join(WLO_PRIMED_2_PATH, model_name, "*.csv")
            ),
            reason="WLO is a word list operation that is the compositional task. We are priming WLO with remove first because WLO depends on this subtask.",
            baseline_perfs=string[1],
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="String",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="WLO + concatenate",
            experiment_paths=get_file_paths(
                os.path.join(WLO_PRIMED_3_PATH, model_name, "*.csv")
            ),
            reason="WLO is a word list operation that is the compositional task. We are priming WLO with concatenate because WLO depends on this subtask.",
            baseline_perfs=string[1],
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="String",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="WLO + exponentiate",
            experiment_paths=get_file_paths(
                os.path.join(WLO_PRIMED_4_PATH, model_name, "*.csv")
            ),
            reason="WLO is a word list operation that is the compositional task. We are priming WLO with exponentiate to see if the performance stays the same or get worse because this task is not required for WLO.",
            baseline_perfs=string[1],
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="String",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="WLO + subtract",
            experiment_paths=get_file_paths(
                os.path.join(WLO_PRIMED_5_PATH, model_name, "*.csv")
            ),
            reason="WLO is a word list operation that is the compositional task. We are priming WLO with subtraction to see if the performance stays the same or get worse because this task is not required for WLO.",
            baseline_perfs=string[1],
        )
    )
    results_list.append(
        get_summary_dict(
            experiment="String",
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="WLO + reverse",
            experiment_paths=get_file_paths(
                os.path.join(WLO_PRIMED_6_PATH, model_name, "*.csv")
            ),
            reason="WLO is a word list operation that is the compositional task. We are priming WLO with string reverse to see if the performance stays the same or get worse because this task is not required for WLO.",
            baseline_perfs=string[1],
        )
    )

    return results_list


# %%
save_path = f"../summaries/{date.today().strftime('%Y-%m-%d')}-string_summary.csv"

# https://heidloff.net/article/running-llm-flan-t5-locally/
results_list = []
results_list.extend(
    string_experiment("google/flan-t5-small", 80000000, get_full_flan_t5_prompt)
)
results_list.extend(
    string_experiment("google/flan-t5-base", 248000000, get_full_flan_t5_prompt)
)
results_list.extend(
    string_experiment("google/flan-t5-large", 780000000, get_full_flan_t5_prompt)
)
results_list.extend(
    string_experiment("google/flan-t5-xl", 3000000000, get_full_flan_t5_prompt)
)
results_list.extend(
    string_experiment("google/flan-t5-xxl", 11000000000, get_full_flan_t5_prompt)
)

results_list.extend(
    string_experiment(
        "meta-llama/Llama-2-7b-chat-hf", 7000000000, get_full_llama_2_chat_prompt_v3
    )
)
results_list.extend(
    string_experiment(
        "meta-llama/Llama-2-13b-chat-hf", 13000000000, get_full_llama_2_chat_prompt_v3
    )
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

output_path = os.path.splitext(save_path)[0]
os.makedirs(output_path, exist_ok=True)
for subexperiment in pd.unique(summary_perf_df["prompt"]):
    experiment_df = summary_perf_df[
        summary_perf_df["prompt"] == subexperiment
    ].reset_index()
    experiment = experiment_df["experiment"][0]
    for acc in [col for col in experiment_df if col.endswith("_acc")]:
        sns.boxplot(experiment_df, x=acc, y="model", orient="h").set(
            title=f"{experiment}: {subexperiment}"
        )
        plt.savefig(
            os.path.join(
                os.path.splitext(save_path)[0],
                f"{experiment} - {subexperiment} - {acc}.png",
            ),
            bbox_inches="tight",
        )
        plt.close()

# %%
string_primed_names = {
    "WLO",
    "WLO + uppercase",
    "WLO + remove first",
    "WLO + concatenate",
    "WLO + exponentiate",
    "WLO + subtract",
    "WLO + reverse",
}

summary_primed_df = summary_perf_df[
    summary_perf_df["prompt"].isin(string_primed_names)
].reset_index()
for model_name in pd.unique(summary_primed_df["model"]):
    experiment_df = summary_primed_df[
        summary_primed_df["model"] == model_name
    ].reset_index()
    experiment = experiment_df["experiment"][0]
    for acc in [col for col in experiment_df if col.endswith("_acc")]:
        sns.boxplot(experiment_df, x=acc, y="prompt", orient="h").set(
            title=f"{experiment} Compositional: {model_name}"
        )
        plt.savefig(
            os.path.join(
                os.path.splitext(save_path)[0],
                f"{model_name.split('/')[-1]} - {experiment} Compositional - {acc}.png",
            ),
            bbox_inches="tight",
        )
        plt.close()
