import csv
import os
import random


def write_csv(
    dataset_folder_path: str,
    save_file: str,
    instruction: str,
    example_questions: list[str],
    example_answers: list[str],
    questions: list[str],
    answers: list[str],
    priming_instruction: list[str] | None = None,
    priming_questions: list[str] | None = None,
    priming_answers: list[str] | None = None,
):
    assert len(questions) == len(answers)
    assert len(example_questions) == len(example_answers)
    if (
        priming_instruction is not None
        and priming_questions is not None
        and priming_answers is not None
    ):
        assert len(example_questions) == len(priming_questions) == len(priming_answers)
    else:
        priming_instruction = ""
        priming_questions = [""] * len(example_questions)
        priming_answers = [""] * len(example_questions)
    os.makedirs(dataset_folder_path, exist_ok=True)
    rows = []
    for example_index in range(len(example_questions)):
        for prompt_index in range(len(questions)):
            rows.append(
                [
                    priming_instruction,
                    priming_questions[example_index],
                    priming_answers[example_index],
                    instruction,
                    example_questions[example_index],
                    example_answers[example_index],
                    questions[prompt_index],
                    answers[prompt_index],
                ]
            )
    with open(os.path.join(dataset_folder_path, save_file), "w") as csv_file:
        csv_writer = csv.writer(csv_file)
        csv_writer.writerow(
            [
                "priming_instruction",
                "priming_question",
                "priming_answer",
                "instruction",
                "example_question",
                "example_answer",
                "question",
                "answer",
            ]
        )
        csv_writer.writerows(rows)


def get_flan_t5_prompt_format(instruction, question, answer=None):
    prompt = f"Q: {instruction}\n" f"{question}\n"
    if answer is None:
        prompt += f"A: "
    else:
        prompt += f"A: {answer}\n\n"
    return prompt


def get_llama_2_chat_prompt_format(instruction, question, answer=None):
    prompt = f"[INST]Q: {instruction}\n{question}[\INST]\n"
    if answer is None:
        prompt += f"A: "
    else:
        prompt += f"A: {answer}\n\n"
    return prompt


def get_full_prompt(
    prompt_format,
    instruction,
    question,
    example_question,
    example_answer,
    priming_instruction=None,
    priming_question=None,
    priming_answer=None,
):
    prompt = ""
    if (
        (priming_instruction is not None and priming_instruction != "")
        and (priming_question is not None and priming_question != "")
        and (priming_answer is not None and priming_answer != "")
    ):
        prompt += prompt_format(instruction=priming_instruction, question=priming_question, answer=priming_answer)
    prompt += prompt_format(instruction=instruction, question=example_question, answer=example_answer)
    prompt += prompt_format(instruction=instruction, question=question)
    return prompt


def sample_dataset(seeds, instruction, questions, answers):
    example_indices = []
    for seed in seeds:
        random.seed(seed)
        index = random.randint(0, len(questions) - 1)
        example_indices.append(index)
    sample_questions = [questions[index] for index in example_indices]
    sample_answers = [answers[index] for index in example_indices]
    dataset = {}
    dataset["instruction"] = instruction
    dataset["questions"] = sample_questions
    dataset["answers"] = sample_answers
    return dataset
