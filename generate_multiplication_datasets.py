import os
import sys
import csv
import random

from generate_datasets_helper import write_csv

def get_multiply_example(min: int, max: int, seed: int=None):
    random.seed(seed)
    x = random.randint(min, max)
    y = random.randint(min, max)
    example = f"{x} * {y} = {x * y}"
    return example
  
def get_carry_example(seed: int=None):
    random.seed(seed)
    x = random.randint(10, 99)
    examples = f"{x} // {10} = {x // 10}"
    return examples
  
def get_sum_example(min: int, max: int, seed: int=None):
    random.seed(seed)
    x = random.randint(min, max)
    y = random.randint(min, max)
    example = f"{x} + {y} = {x + y}"
    return example
  
def get_concatenate_example(seed: int=None):
    random.seed(seed)
    x = random.randint(0, 9)
    z = random.randint(0, 9)
    y = random.randint(0, 9)
    example = f"{x} & {y} & {z} = {x}{y}{z}"
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
    return sample_x,sample_y

def create_dataset(dataset_path: str, example_seeds: list[int]=range(5), question_seed: int=1234567890):
  sample_x = []
  sample_y = []
  sample = get_samples(0, 999, question_seed)
  sample_x.extend(sample[0])
  sample_y.extend(sample[1])
  sample = get_samples(0, 9999, question_seed)
  sample_x.extend(sample[0])
  sample_y.extend(sample[1])
  sample = get_samples(0, 99999, question_seed)
  sample_x.extend(sample[0])
  sample_y.extend(sample[1])
  examples = []
  min = 0
  max = 9
  for index in range(len(example_seeds)):
    print(min, max)
    examples.append(get_multiply_example(min, max, example_seeds[index]))
    max = int(str(max) + "9")
  write_csv(
    dataset_path=dataset_path,
    save_name="multiply.csv",
    instruction="Multiply two numbers.",
    examples=examples,
    questions=[f"{x} * {y} =" for x in range(100) for y in range(100)]
             +[f"{sample_x[index]} * {sample_y[index]} =" for index in range(len(sample_x))],
    answers=[f"{x} * {y} =" for x in range(100) for y in range(100)]
           +[f"{sample_x[index] * sample_y[index]}" for index in range(len(sample_x))]
  )
  
  write_csv(
    dataset_path=dataset_path,
    save_name="multiply_1_digit.csv",
    instruction="Multiply two numbers.",
    examples=[get_multiply_example(0, 9, example_seed) for example_seed in example_seeds],
    questions=[f"{x} * {y} =" for x in range(10) for y in range(10)],
    answers=[f"{x * y}" for x in range(10) for y in range(10)]
  )
  
  write_csv(
    dataset_path=dataset_path,
    save_name="carry.csv",
    instruction="Carry the digit from the tens place.",
    examples=[get_carry_example(example_seed) for example_seed in example_seeds],
    questions=[f"{x} // 10 =" for x in range(10, 100)],
    answers=[f"{x // 10}" for x in range(10, 100)]
  )
  
  write_csv(
    dataset_path=dataset_path,
    save_name="sum.csv",
    instruction="Add two numbers.",
    examples=[get_sum_example(0, 100, example_seed) for example_seed in example_seeds],
    questions=[f"{x} + {y} =" for x in range(100) for y in range(100)],
    answers=[f"{x + y}" for x in range(100) for y in range(100)]
  )
  
  write_csv(
    dataset_path=dataset_path,
    save_name="concatenate.csv",
    instruction="Concatenate the numbers.",
    examples=[get_concatenate_example(example_seed) for example_seed in example_seeds],
    questions=[f"{x} & {y} =" for x in range(10) for y in range(10)]
             +[f"{x} & {y} & {z} =" for x in range(10) for y in range(10) for z in range(10)],
    answers=[f"{x}{y}" for x in range(10) for y in range(10)]
           +[f"{x}{y}{z}" for x in range(10) for y in range(10) for z in range(10)]
  )
          
if __name__ == "__main__":
  for instruction_type in [1]:
    for prompt_type in [1]:
      dataset_path = f"./data/multiplication/instruction_type-{instruction_type}/prompt_type-{prompt_type}/"
      create_dataset(dataset_path)