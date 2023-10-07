import os
import sys
import random

from generate_datasets_helper import write_csv

def get_multiply_example(min: int, max: int, seed: int=None):
    random.seed(seed)
    x = random.randint(min, max)
    y = random.randint(min, max)
    example = f"{x} * {y} = {x * y}"
    return example
  
def get_sum_example(min: int, max: int, seed: int=None):
    random.seed(seed)
    x = random.randint(min, max)
    y = random.randint(min, max)
    example = f"{x} + {y} = {x + y}"
    return example
  
def get_samples(min: int, max: int, question_seed: int):
    sample_x = []
    sample_y = []
    for i in range(1000):
      random.seed(question_seed + i)
      x = random.randint(min, max)
      y = random.randint(min, max)
      sample_x.append(x)
      sample_y.append(y)
    return sample_x, sample_y

def create_dataset(dataset_path: str, example_seeds: list[int]=range(5), question_seed: int=1234567890):
  write_csv(
    dataset_path=dataset_path,
    save_file="multiply_2_digits.csv",
    instruction="Multiply two numbers.",
    examples=[get_multiply_example(10, 99, example_seed) for example_seed in example_seeds],
    questions=[f"{x} * {y} =" for x in range(10, 100) for y in range(10, 100)],
    answers=[f"{x * y}" for x in range(10, 100) for y in range(10, 100)]
  )
  
  sample_x, sample_y = get_samples(100, 999, question_seed)
  write_csv(
    dataset_path=dataset_path,
    save_file="multiply_3_digits.csv",
    instruction="Multiply two numbers.",
    examples=[get_multiply_example(100, 999, example_seed) for example_seed in example_seeds],
    questions=[f"{sample_x[index]} * {sample_y[index]} =" for index in range(len(sample_x))],
    answers=[f"{sample_x[index] * sample_y[index]}" for index in range(len(sample_x))]
  )
  
  sample_x, sample_y = get_samples(1000, 9999, question_seed)
  write_csv(
    dataset_path=dataset_path,
    save_file="multiply_4_digits.csv",
    instruction="Multiply two numbers.",
    examples=[get_multiply_example(1000, 9999, example_seed) for example_seed in example_seeds],
    questions=[f"{sample_x[index]} * {sample_y[index]} =" for index in range(len(sample_x))],
    answers=[f"{sample_x[index] * sample_y[index]}" for index in range(len(sample_x))]
  )
  
  sample_x, sample_y = get_samples(10000, 99999, question_seed)
  write_csv(
    dataset_path=dataset_path,
    save_file="multiply_5_digits.csv",
    instruction="Multiply two numbers.",
    examples=[get_multiply_example(10000, 99999, example_seed) for example_seed in example_seeds],
    questions=[f"{sample_x[index]} * {sample_y[index]} =" for index in range(len(sample_x))],
    answers=[f"{sample_x[index] * sample_y[index]}" for index in range(len(sample_x))]
  )
  
  write_csv(
    dataset_path=dataset_path,
    save_file="sum_1_digit.csv",
    instruction="Add two numbers.",
    examples=[get_sum_example(0, 10, example_seed) for example_seed in example_seeds],
    questions=[f"{x} + {y} =" for x in range(10) for y in range(10)],
    answers=[f"{x + y}" for x in range(10) for y in range(10)]
  )
  
  write_csv(
    dataset_path=dataset_path,
    save_file="sum_2_digits.csv",
    instruction="Add two numbers.",
    examples=[get_sum_example(10, 100, example_seed) for example_seed in example_seeds],
    questions=[f"{x} + {y} =" for x in range(10, 100) for y in range(10, 100)],
    answers=[f"{x + y}" for x in range(10, 100) for y in range(10, 100)]
  )
  
  sample_x, sample_y = get_samples(100, 999, question_seed)
  write_csv(
    dataset_path=dataset_path,
    save_file="sum_3_digits.csv",
    instruction="Add two numbers.",
    examples=[get_sum_example(100, 999, example_seed) for example_seed in example_seeds],
    questions=[f"{sample_x[index]} * {sample_y[index]} =" for index in range(len(sample_x))],
    answers=[f"{sample_x[index] * sample_y[index]}" for index in range(len(sample_x))]
  )
  
  sample_x, sample_y = get_samples(1000, 9999, question_seed)
  write_csv(
    dataset_path=dataset_path,
    save_file="sum_4_digits.csv",
    instruction="Add two numbers.",
    examples=[get_sum_example(1000, 9999, example_seed) for example_seed in example_seeds],
    questions=[f"{sample_x[index]} * {sample_y[index]} =" for index in range(len(sample_x))],
    answers=[f"{sample_x[index] * sample_y[index]}" for index in range(len(sample_x))]
  )
  
  sample_x, sample_y = get_samples(10000, 99999, question_seed)
  write_csv(
    dataset_path=dataset_path,
    save_file="sum_5_digits.csv",
    instruction="Add two numbers.",
    examples=[get_sum_example(10000, 99999, example_seed) for example_seed in example_seeds],
    questions=[f"{sample_x[index]} * {sample_y[index]} =" for index in range(len(sample_x))],
    answers=[f"{sample_x[index] * sample_y[index]}" for index in range(len(sample_x))]
  )
          
if __name__ == "__main__":
  for instruction_type in [1]:
    for prompt_type in [1]:
      dataset_path = f"./data/digit/instruction_type-{instruction_type}/prompt_type-{prompt_type}/"
      create_dataset(dataset_path)