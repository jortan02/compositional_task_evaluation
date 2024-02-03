from datetime import date
from datasets_helper import get_flan_t5_prompt_format, get_llama_2_chat_prompt_format
from summary_helper import *

def string_experiment(
    model_name: str, param_count: int, prompt_format
) -> list[dict[str, any]]:
    def is_correct(
        answers: list[str], predictions_list: list[list[str]]
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

    def _get_string(
        raw_predictions_list: list[list[str]],
    ) -> list[list[str]]:
        return raw_predictions_list


    STRING_PATH = f"../results/string/"
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
    extraction_score_functions = [("exact_micro", _get_string, is_correct)]

    results_list.append(
        get_summary_dict(
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Uppercase",
            experiment_paths=glob.glob(os.path.join(UPPERCASE_PATH, model_name, "*.csv")),
            reason="Uppercase capitalizes all the letters in a word for each word in the word list.",
        )[0]
    )
    results_list.append(
        get_summary_dict(
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Concatenate",
            experiment_paths=glob.glob(os.path.join(CONCATENATE_PATH, model_name, "*.csv")),
            reason="Concatenate extends the first word list to include the words in the second word list.",
        )[0]
    )
    results_list.append(
        get_summary_dict(
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="Remove First",
            experiment_paths=glob.glob(os.path.join(REMOVE_FIRST_PATH, model_name, "*.csv")),
            reason="Remove First removes the first word in the word list.",
        )[0]
    )
    results_list.append(
        get_summary_dict(
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="WLO",
            experiment_paths=glob.glob(os.path.join(WLO_PATH, model_name, "*.csv")),
            reason="WLO is a word list operation that is the compositional task. It requires the first word list to be uppercased, the second word list to have the first word removed, and one to concatenate the two sub results.",
        )[0]
    )
    results_list.append(
        get_summary_dict(
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="WLO primed with uppercase",
            experiment_paths=glob.glob(os.path.join(WLO_PRIMED_1_PATH, model_name, "*.csv")),
            reason="WLO is a word list operation that is the compositional task. We are priming WLO with uppercase because WLO depends on this subtask.",
        )[0]
    )
    results_list.append(
        get_summary_dict(
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="WLO primed with remove first",
            experiment_paths=glob.glob(os.path.join(WLO_PRIMED_2_PATH, model_name, "*.csv")),
            reason="WLO is a word list operation that is the compositional task. We are priming WLO with remove first because WLO depends on this subtask.",
        )[0]
    )
    results_list.append(
        get_summary_dict(
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="WLO primed with concatenate",
            experiment_paths=glob.glob(os.path.join(WLO_PRIMED_3_PATH, model_name, "*.csv")),
            reason="WLO is a word list operation that is the compositional task. We are priming WLO with concatenate because WLO depends on this subtask.",
        )[0]
    )
    results_list.append(
        get_summary_dict(
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="WLO primed with exponentiate",
            experiment_paths=glob.glob(os.path.join(WLO_PRIMED_4_PATH, model_name, "*.csv")),
            reason="WLO is a word list operation that is the compositional task. We are priming WLO with exponentiate to see if the performance stays the same or get worse because this task is not required for WLO.",
        )[0]
    )
    results_list.append(
        get_summary_dict(
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="WLO primed with subtract",
            experiment_paths=glob.glob(os.path.join(WLO_PRIMED_5_PATH, model_name, "*.csv")),
            reason="WLO is a word list operation that is the compositional task. We are priming WLO with subtraction to see if the performance stays the same or get worse because this task is not required for WLO.",
        )[0]
    )
    results_list.append(
        get_summary_dict(
            prompt_format=prompt_format,
            model=model_name,
            param_count=param_count,
            extraction_score_functions=extraction_score_functions,
            prompt="WLO primed with reverse",
            experiment_paths=glob.glob(os.path.join(WLO_PRIMED_6_PATH, model_name, "*.csv")),
            reason="WLO is a word list operation that is the compositional task. We are priming WLO with string reverse to see if the performance stays the same or get worse because this task is not required for WLO.",
        )[0]
    )
    
    return results_list


if __name__ == "__main__":
    save_path = f"../summaries/{date.today().strftime('%Y-%m-%d')}-string_summary.csv"

    # https://heidloff.net/article/running-llm-flan-t5-locally/
    results_list = []
    results_list.extend(string_experiment("google/flan-t5-small", 80000000, get_flan_t5_prompt_format))
    results_list.extend(string_experiment("google/flan-t5-base", 248000000, get_flan_t5_prompt_format))
    results_list.extend(string_experiment("google/flan-t5-large", 780000000, get_flan_t5_prompt_format))
    results_list.extend(string_experiment("google/flan-t5-xl", 3000000000, get_flan_t5_prompt_format))
    results_list.extend(string_experiment("google/flan-t5-xxl", 11000000000, get_flan_t5_prompt_format))
    
    results_list.extend(
        string_experiment("meta-llama/Llama-2-7b-chat-hf", 7000000000, get_llama_2_chat_prompt_format)
    )
    # results_list.extend(
    #     multiplication_experiment("meta-llama/Llama-2-13b-chat-hf", 13000000000)
    # )

    summary_df = pd.DataFrame(results_list)
    summary_df.to_csv(save_path, index=False)
