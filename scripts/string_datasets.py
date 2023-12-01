import random
from nltk.corpus import wordnet as wn

from datasets_helper import *

def get_uppercase_example(seed: int | None, all_words: list[str], list_length: int):
    random.seed(seed)
    sample = random.sample(all_words, k=list_length)
    example = f"Uppercase of {word_list_format(sample)} is {word_list_format(uppercase(sample))}"
    return example

def get_remove_first_example(seed: int | None, all_words: list[str], list_length: int):
    random.seed(seed)
    sample = random.sample(all_words, k=list_length)
    example = f"Remove first of {word_list_format(sample)} is {word_list_format(remove_first(sample))}"
    return example

def get_concatenate_example(seed: int | None, all_words: list[str], list_length: int):
    random.seed(seed)
    sample_1 = random.sample(all_words, k=list_length)
    sample_2 = random.sample(all_words, k=list_length)
    example = f"Concatenate of {word_list_format(sample_1)} and {word_list_format(sample_2)} is {word_list_format(concatenate(sample_1, sample_2))}"
    return example

def get_wlo_example(seed: int | None, all_words: list[str], list_length: int):
    random.seed(seed)
    sample_1 = random.sample(all_words, k=list_length)
    sample_2 = random.sample(all_words, k=list_length)
    example = f"WLO of {word_list_format(sample_1)} and {word_list_format(sample_2)} is {word_list_format(concatenate(uppercase(sample_1), remove_first(sample_2)))}"
    return example

def get_word_list_samples(question_seed: int | None, all_words: list[str], list_length: int, sample_count: int = 1000): # TODO: 10000
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

    all_words = [word for word in wn.words() if len(word) <= 6 and "_" not in word]

    word_list_1, word_list_2 = get_word_list_samples(question_seed, all_words, list_length)

    uppercase_dataset = {
        "instruction": "Uppercase all of the words in the list.",
        "examples": [get_uppercase_example(example_seed, all_words, list_length) for example_seed in example_seeds],
        "questions": [f"Uppercase of {word_list_format(sample)} is " for sample in word_list_1],
        "answers": [word_list_format(uppercase(sample)) for sample in word_list_1],
    }
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="uppercase.csv",
        instruction=uppercase_dataset["instruction"],
        examples=uppercase_dataset["examples"],
        questions=uppercase_dataset["questions"],
        answers=uppercase_dataset["answers"],
    )
    
    remove_first_dataset = {
        "instruction": "Remove the first word in the list.",
        "examples": [get_remove_first_example(example_seed, all_words, list_length) for example_seed in example_seeds],
        "questions": [f"Remove first of {word_list_format(sample)} is " for sample in word_list_1],
        "answers": [word_list_format(remove_first(sample)) for sample in word_list_1],
    }
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="remove-first.csv",
        instruction=remove_first_dataset["instruction"],
        examples=remove_first_dataset["examples"],
        questions=remove_first_dataset["questions"],
        answers=remove_first_dataset["answers"],
    )
    
    concatenate_dataset = {
        "instruction": "Concatenate the two word lists.",
        "examples": [get_concatenate_example(example_seed, all_words, list_length) for example_seed in example_seeds],
        "questions": [f"Concatenate of {word_list_format(word_list_1[index])} and {word_list_format(word_list_2[index])} is " for index in range(len(word_list_1))],
        "answers": [word_list_format(concatenate(word_list_1[index], word_list_2[index])) for index in range(len(word_list_1))],
    }
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="concatenate.csv",
        instruction=concatenate_dataset["instruction"],
        examples=concatenate_dataset["examples"],
        questions=concatenate_dataset["questions"],
        answers=concatenate_dataset["answers"],
    )
    
    wlo_dataset = {
        "instruction": "WLO the two word lists. WLO uses these operations in order: uppercase all of the words in the first word list, remove the first word in the second word list, and concatenate the two word lists.",
        "examples": [get_wlo_example(example_seed, all_words, list_length) for example_seed in example_seeds],
        "questions": [f"WLO of {word_list_format(word_list_1[index])} and {word_list_format(word_list_2[index])} is " for index in range(len(word_list_1))],
        "answers": [word_list_format(concatenate(uppercase(word_list_1[index]), remove_first(word_list_2[index]))) for index in range(len(word_list_1))],
    }
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="wlo.csv",
        instruction=wlo_dataset["instruction"],
        examples=wlo_dataset["examples"],
        questions=wlo_dataset["questions"],
        answers=wlo_dataset["answers"],
    )
    
    # 


if __name__ == "__main__":
    for instruction_type in [1]:
        for prompt_type in [1]:
            dataset_path = f"../data/string/"
            create_dataset(dataset_path)
