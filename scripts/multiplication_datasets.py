import os
import sys
import csv
import string
import random

from datasets_helper import *


def get_multiply_example(min: int, max: int, seed: int | None):
    random.seed(seed)
    x = random.randint(min, max)
    y = random.randint(min, max)
    example = f"{x} * {y} = {x * y}"
    return example


def get_carry_example(seed: int = None):
    random.seed(seed)
    x = random.randint(10, 99)
    examples = f"{x} // {10} = {x // 10}"
    return examples


def get_sum_example(min: int, max: int, seed: int | None):
    random.seed(seed)
    x = random.randint(min, max)
    y = random.randint(min, max)
    example = f"{x} + {y} = {x + y}"
    return example


def get_concatenate_example(seed: int | None):
    random.seed(seed)
    x = random.randint(0, 9)
    z = random.randint(0, 9)
    y = random.randint(0, 9)
    example = f"{x} & {y} & {z} = {x}{y}{z}"
    return example


def get_int_samples(min: int, max: int, question_seed: int | None, sample_count: int = 1000):
    samples_x = []
    samples_y = []
    for i in range(sample_count):
        random.seed(question_seed + i)
        x = random.randint(min, max)
        y = random.randint(min, max)
        samples_x.append(x)
        samples_y.append(y)
    return samples_x, samples_y

def get_str_samples(question_seed: int | None, length: int = 6, sample_count: int = 1000):
    samples = []
    for i in range(sample_count):
        random.seed(question_seed + i)
        random_str = "".join(random.choices(string.ascii_lowercase, k=length))
        samples.append(random_str)
    return samples

def create_dataset(
    dataset_folder_path: str,
    example_seeds: list[int] = range(5),
    question_seed: int = 1234567890,
):
    carry_dataset = {
        "instruction": "Carry the digit from the tens place.",
        "examples": [get_carry_example(example_seed) for example_seed in example_seeds],
        "questions": [f"{x} // 10 =" for x in range(10, 100)],
        "answers": [f"{x // 10}" for x in range(10, 100)],
    }
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="carry.csv",
        instruction=carry_dataset["instruction"],
        examples=carry_dataset["examples"],
        questions=carry_dataset["questions"],
        answers=carry_dataset["answers"],
    )

    concatenate_dataset = {
        "instruction": "Concatenate the numbers.",
        "examples": [
            get_concatenate_example(example_seed) for example_seed in example_seeds
        ],
        "questions": [f"{x} & {y} =" for x in range(10) for y in range(10)]
        + [
            f"{x} & {y} & {z} ="
            for x in range(10)
            for y in range(10)
            for z in range(10)
        ],
        "answers": [f"{x}{y}" for x in range(10) for y in range(10)]
        + [f"{x}{y}{z}" for x in range(10) for y in range(10) for z in range(10)],
    }
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="concatenate.csv",
        instruction=concatenate_dataset["instruction"],
        examples=concatenate_dataset["examples"],
        questions=concatenate_dataset["questions"],
        answers=concatenate_dataset["answers"],
    )

    multiply_1_digit_dataset = {
        "instruction": "Multiply two numbers.",
        "examples": [
            get_multiply_example(0, 9, example_seed) for example_seed in example_seeds
        ],
        "questions": [f"{x} * {y} =" for x in range(10) for y in range(10)],
        "answers": [f"{x * y}" for x in range(10) for y in range(10)],
    }
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-1-digit.csv",
        instruction=multiply_1_digit_dataset["instruction"],
        examples=multiply_1_digit_dataset["examples"],
        questions=multiply_1_digit_dataset["questions"],
        answers=multiply_1_digit_dataset["answers"],
    )

    subtract_dataset = {
        "instruction": "Add two numbers.",
        "examples": [
            get_sum_example(0, 100, example_seed) for example_seed in example_seeds
        ],
        "questions": [f"{x} + {y} =" for x in range(100) for y in range(100)],
        "answers": [f"{x + y}" for x in range(100) for y in range(100)],
    }
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="sum.csv",
        instruction=subtract_dataset["instruction"],
        examples=subtract_dataset["examples"],
        questions=subtract_dataset["questions"],
        answers=subtract_dataset["answers"],
    )

    # For multiply.csv, sample questions with 3+ digits because sample space is large
    samples_x = []
    samples_y = []
    sample = get_int_samples(0, 999, question_seed)
    samples_x.extend(sample[0])
    samples_y.extend(sample[1])
    sample = get_int_samples(0, 9999, question_seed)
    samples_x.extend(sample[0])
    samples_y.extend(sample[1])
    sample = get_int_samples(0, 99999, question_seed)
    samples_x.extend(sample[0])
    samples_y.extend(sample[1])
    # For multiply.csv, try giving examples of varying size
    examples = []
    min = 0
    max = 9
    for index in range(len(example_seeds)):
        examples.append(get_multiply_example(min, max, example_seeds[index]))
        max = int(str(max) + "9")

    multiply_dataset = {
        "instruction": "Multiply two numbers.",
        "examples": examples,
        "questions": [f"{x} * {y} =" for x in range(100) for y in range(100)]
        + [
            f"{samples_x[index]} * {samples_y[index]} =" for index in range(len(samples_x))
        ],
        "answers": [f"{x * y}" for x in range(100) for y in range(100)]
        + [f"{samples_x[index] * samples_y[index]}" for index in range(len(samples_x))],
    }

    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply.csv",
        instruction=multiply_dataset["instruction"],
        examples=multiply_dataset["examples"],
        questions=multiply_dataset["questions"],
        answers=multiply_dataset["answers"],
    )

    # 1: carry, 2: concatenate, 3: multiply-1-digit, 4: sum, 5: exp, 6: sub, 7: rev()
    power_dataset = {
        "instruction": "Exponentiate the number.",
        "questions": [f"{x}**{y} =" for x in range(10) for y in range(10)],
        "answers": [f"{x**y}" for x in range(10) for y in range(10)],
    }

    subtract_dataset = {
        "instruction": "Subtract two numbers.",
        "questions": [f"{x} - {y} =" for x in range(100) for y in range(100)],
        "answers": [f"{x - y}" for x in range(100) for y in range(100)],
    }
    
    samples = get_str_samples(question_seed)
    reverse_dataset = {
        "instruction": "Reverse the string.",
        "questions": [f"The reverse of {sample} is" for sample in samples],
        "answers": [f"{sample[::-1]}" for sample in samples],
    }
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-primed-5.csv",
        instruction=multiply_dataset["instruction"],
        examples=multiply_dataset["examples"],
        questions=multiply_dataset["questions"],
        answers=multiply_dataset["answers"],
        primings=[
            create_priming([power_dataset], seed=example_seed) for example_seed in example_seeds
        ],
    )

    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-primed-6.csv",
        instruction=multiply_dataset["instruction"],
        examples=multiply_dataset["examples"],
        questions=multiply_dataset["questions"],
        answers=multiply_dataset["answers"],
        primings=[
            create_priming([subtract_dataset], seed=example_seed) for example_seed in example_seeds
        ],
    )
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-primed-7.csv",
        instruction=multiply_dataset["instruction"],
        examples=multiply_dataset["examples"],
        questions=multiply_dataset["questions"],
        answers=multiply_dataset["answers"],
        primings=[
            create_priming([reverse_dataset], seed=example_seed) for example_seed in example_seeds
        ],
    )

    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-primed-1.csv",
        instruction=multiply_dataset["instruction"],
        examples=multiply_dataset["examples"],
        questions=multiply_dataset["questions"],
        answers=multiply_dataset["answers"],
        primings=[
            create_priming([carry_dataset], seed=example_seed)
            for example_seed in example_seeds
        ],
    )
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-primed-2.csv",
        instruction=multiply_dataset["instruction"],
        examples=multiply_dataset["examples"],
        questions=multiply_dataset["questions"],
        answers=multiply_dataset["answers"],
        primings=[
            create_priming([concatenate_dataset], seed=example_seed)
            for example_seed in example_seeds
        ],
    )
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-primed-3.csv",
        instruction=multiply_dataset["instruction"],
        examples=multiply_dataset["examples"],
        questions=multiply_dataset["questions"],
        answers=multiply_dataset["answers"],
        primings=[
            create_priming([multiply_1_digit_dataset], seed=example_seed)
            for example_seed in example_seeds
        ],
    )
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-primed-4.csv",
        instruction=multiply_dataset["instruction"],
        examples=multiply_dataset["examples"],
        questions=multiply_dataset["questions"],
        answers=multiply_dataset["answers"],
        primings=[
            create_priming([subtract_dataset], seed=example_seed)
            for example_seed in example_seeds
        ],
    )


if __name__ == "__main__":
    for instruction_type in [1]:
        for prompt_type in [1]:
            dataset_path = f"../data/multiplication/instruction_type-{instruction_type}/prompt_type-{prompt_type}/"
            create_dataset(dataset_path)
