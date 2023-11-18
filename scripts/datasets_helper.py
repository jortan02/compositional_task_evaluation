import csv
import os
import random
      
def write_csv(dataset_folder_path: str, save_file: str, instruction: str, examples: list[str], questions: list[str], answers: list[str], primings: list[str]=None):
    assert len(questions) == len(answers)
    if primings is None:
      primings = [""] * len(examples)
    else:
      assert len(examples) == len(primings)
    os.makedirs(dataset_folder_path, exist_ok=True)
    rows = []
    for example_index, example in enumerate(examples):
        for prompt_index in range(len(questions)):
          rows.append([primings[example_index], instruction, example, questions[prompt_index], answers[prompt_index]])
    with open(os.path.join(dataset_folder_path, save_file), "w") as csv_file:
      csv_writer = csv.writer(csv_file)
      csv_writer.writerow(["priming", "instruction", "example", "question", "answer"])
      csv_writer.writerows(rows)
      
def prompt_format(instruction, example, question="", priming=""):
  prompt = f"{priming}\n" if len(priming) > 0 else ""
  prompt += \
  (
  f"{instruction}\n"
  "###\n"
  f"{example}\n"
  "###\n"
  f"{question}"
  )
  return prompt

def create_priming(datasets: list[dict[str, str]], seed: int|None):
  random.seed(seed)
  priming = ""
  for dataset_index, dataset in enumerate(datasets):
    prompt_index = random.randint(0, len(dataset["questions"]) - 1)
    question = dataset["questions"][prompt_index]
    answer = dataset["answers"][prompt_index]
    example = f"{question} {answer}"
    priming += prompt_format(
      instruction=dataset["instruction"],
      example=example,
    )
  return priming    