import random
from nltk.corpus import wordnet as wn
import requests

from datasets_helper import *

def get_word_list_samples(question_seed: int | None, all_words: list[str], list_length: int, sample_count: int = 1000):
    samples_x = []
    samples_y = []
    for i in range(sample_count):
        random.seed(question_seed + i)
        x = random.sample(all_words, k=list_length)
        y = random.sample(all_words, k=list_length)
        samples_x.append(x)
        samples_y.append(y)
    return samples_x, samples_y

def word_list_format(word_list: list[str]):
    return ", ".join(word_list)

def uppercase(word_list: list[str]):
    return [word.upper() for word in word_list]

def remove_first(word_list: list[str]):
    return word_list[1:]

def concatenate(word_list_1: list[str], word_list_2: list[str]):
    return word_list_1 + word_list_2

def create_dataset(
    dataset_folder_path: str,
    example_seeds: list[int] = range(5),
    question_seed: int = 1234567890,
    list_length: int = 3,
):
    filter = {line.decode() for line in requests.get("https://www.cs.cmu.edu/~biglou/resources/bad-words.txt").iter_lines()}
    all_words = [word.lower() for word in wn.words() if len(word) <= 6 and "_" not in word and word not in filter and not any(char.isdigit() for char in word)]

    word_list_1, word_list_2 = get_word_list_samples(question_seed, all_words, list_length)
    uppercase_dataset = {
        "instruction": "Uppercase all of the words in the list.",
        "questions": [f"Uppercase of {word_list_format(sample)} is what?" for sample in word_list_1],
        "answers": [word_list_format(uppercase(sample)) for sample in word_list_1],
    }
    uppercase_samples = sample_dataset(example_seeds, **uppercase_dataset)
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="uppercase.csv",
        **uppercase_dataset,
        example_questions=uppercase_samples["questions"],
        example_answers=uppercase_samples["answers"]
    )
    
    remove_first_dataset = {
        "instruction": "Remove the first word in the list.",
        "questions": [f"Remove first of {word_list_format(sample)} is what?" for sample in word_list_1],
        "answers": [word_list_format(remove_first(sample)) for sample in word_list_1],
    }
    remove_first_samples = sample_dataset(example_seeds, **remove_first_dataset)
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="remove-first.csv",
        **remove_first_dataset,
        example_questions=remove_first_samples["questions"],
        example_answers=remove_first_samples["answers"]
    )
    
    concatenate_dataset = {
        "instruction": "Concatenate the two word lists.",
        "questions": [f"Concatenate of {word_list_format(word_list_1[index])} and {word_list_format(word_list_2[index])} is what?" for index in range(len(word_list_1))],
        "answers": [word_list_format(concatenate(word_list_1[index], word_list_2[index])) for index in range(len(word_list_1))],
    }
    concatenate_samples = sample_dataset(example_seeds, **concatenate_dataset)
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="concatenate.csv",
        **concatenate_dataset,
        example_questions=concatenate_samples["questions"],
        example_answers=concatenate_samples["answers"]
    )
    
    wlo_dataset = {
        "instruction": "Perform these operations in order: uppercase all of the words in the first word list, remove the first word in the second word list, and concatenate the two word lists.",
        "questions": [f"Using {word_list_format(word_list_1[index])} and {word_list_format(word_list_2[index])} gives what?" for index in range(len(word_list_1))],
        "answers": [word_list_format(concatenate(uppercase(word_list_1[index]), remove_first(word_list_2[index]))) for index in range(len(word_list_1))],
    }
    wlo_samples = sample_dataset(example_seeds, **wlo_dataset)
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="wlo.csv",
        **wlo_dataset,
        example_questions=wlo_samples["questions"],
        example_answers=wlo_samples["answers"]
    )
    
    # 1: uppercase, 2: remove_first, 3: concatenate, 4: exp, 5: sub, 6: rev
    power_dataset = {
        "instruction": "Exponentiate the number.",
        "questions": [f"{x}**{y} =" for x in range(10) for y in range(10)],
        "answers": [f"{x**y}" for x in range(10) for y in range(10)],
    }
    power_samples = sample_dataset(example_seeds, **power_dataset)

    subtract_dataset = {
        "instruction": "Subtract two numbers.",
        "questions": [f"{x} - {y} =" for x in range(100) for y in range(100)],
        "answers": [f"{x - y}" for x in range(100) for y in range(100)],
    }
    subtract_samples = sample_dataset(example_seeds, **subtract_dataset)

    samples = get_str_samples(question_seed)
    reverse_dataset = {
        "instruction": "Reverse the string.",
        "questions": [f"Reverse of {sample} is what?" for sample in samples],
        "answers": [f"{sample[::-1]}" for sample in samples],
    }
    reverse_samples = sample_dataset(example_seeds, **reverse_dataset)
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="wlo-primed-1.csv",
        **wlo_dataset,
        example_questions=wlo_samples["questions"],
        example_answers=wlo_samples["answers"],
        priming_instruction=uppercase_samples["instruction"],
        priming_questions=uppercase_samples["questions"],
        priming_answers=uppercase_samples["answers"],
    )
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="wlo-primed-2.csv",
        **wlo_dataset,
        example_questions=wlo_samples["questions"],
        example_answers=wlo_samples["answers"],
        priming_instruction=remove_first_samples["instruction"],
        priming_questions=remove_first_samples["questions"],
        priming_answers=remove_first_samples["answers"],
    )
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="wlo-primed-3.csv",
        **wlo_dataset,
        example_questions=wlo_samples["questions"],
        example_answers=wlo_samples["answers"],
        priming_instruction=concatenate_samples["instruction"],
        priming_questions=concatenate_samples["questions"],
        priming_answers=concatenate_samples["answers"],
    )
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="wlo-primed-4.csv",
        **wlo_dataset,
        example_questions=wlo_samples["questions"],
        example_answers=wlo_samples["answers"],
        priming_instruction=power_samples["instruction"],
        priming_questions=power_samples["questions"],
        priming_answers=power_samples["answers"],
    )
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="wlo-primed-5.csv",
        **wlo_dataset,
        example_questions=wlo_samples["questions"],
        example_answers=wlo_samples["answers"],
        priming_instruction=subtract_samples["instruction"],
        priming_questions=subtract_samples["questions"],
        priming_answers=subtract_samples["answers"],
    )
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="wlo-primed-6.csv",
        **wlo_dataset,
        example_questions=wlo_samples["questions"],
        example_answers=wlo_samples["answers"],
        priming_instruction=reverse_samples["instruction"],
        priming_questions=reverse_samples["questions"],
        priming_answers=reverse_samples["answers"],
    )

if __name__ == "__main__":
    for instruction_type in [1]:
        for prompt_type in [1]:
            dataset_path = f"../data/string-v3/"
            create_dataset(dataset_path)
