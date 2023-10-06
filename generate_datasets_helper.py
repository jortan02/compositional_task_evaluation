import csv
import os

def write_csv(dataset_path: str, save_name: str, instruction: str, examples: list[str], questions: list[str], answers: list[str]):
    assert len(questions) == len(answers)
    os.makedirs(dataset_path, exist_ok=True)
    rows = []
    for example in examples:
      for index in range(len(questions)):
        rows.append([instruction, example, questions[index], answers[index]])
    with open(os.path.join(dataset_path, save_name), "w") as csv_file:
      csv_writer = csv.writer(csv_file)
      csv_writer.writerow(["instruction", "example", "question", "answer"])
      csv_writer.writerows(rows)