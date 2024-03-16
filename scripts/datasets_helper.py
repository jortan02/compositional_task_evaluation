import glob
import string
import csv
import os
import random
import pandas as pd
from prompt_template import PromptTemplate as PT


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
    and_create_sections: bool = True,
    section_count: int = 10,
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
    output_path = os.path.join(dataset_folder_path, save_file)
    with open(output_path, "w") as csv_file:
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
    if and_create_sections:
        create_sections(
            input_path=output_path,
            output_path=os.path.join(
                dataset_folder_path, os.path.splitext(save_file)[0]
            ),
            section_count=section_count,
        )


def create_sections(input_path, output_path, section_count):
    data_df = pd.read_csv(input_path, dtype="str", keep_default_na=False)

    num_sections = section_count
    section_size = len(data_df) // num_sections

    os.makedirs(output_path, exist_ok=True)
    for section_index in range(num_sections):
        start = section_index * section_size
        end = (
            (section_index + 1) * section_size
            if section_index < num_sections - 1
            else len(data_df)
        )
        section_df = data_df.iloc[start:end]
        section_file = f"section-{section_index + 1}.csv"
        section_path = os.path.join(output_path, section_file)
        section_df.to_csv(section_path, index=False)


def create_experiment_from_sections(input_folder_path, output_file_path, section_count):
    section_paths = [
        os.path.join(input_folder_path, f"section-{index + 1}.csv")
        for index in range(section_count)
    ]
    section_dfs = [
        pd.read_csv(section_path, dtype="str", keep_default_na=False)
        for section_path in section_paths
    ]
    experiment_df = pd.concat(section_dfs)
    os.makedirs(os.path.dirname(output_file_path), exist_ok=True)
    experiment_df.to_csv(output_file_path, index=False)


def get_str_samples(
    question_seed: int | None, length: int = 6, sample_count: int = 1000
):
    samples = []
    for i in range(sample_count):
        random.seed(question_seed + i)
        random_str = "".join(random.choices(string.ascii_lowercase, k=length))
        samples.append(random_str)
    return samples


def get_flan_t5_prompt_format(instruction, question, answer=None):
    prompt = f"Q: {instruction}\n" f"{question}\n"
    if answer is None:
        prompt += f"A: "
    else:
        prompt += f"A: {answer}\n\n"
    return prompt


# def get_llama_2_chat_prompt_format(instruction, question, answer=None):
#     prompt = f"[INST] Q: {instruction}\n{question} [\INST]\n"
#     if answer is None:
#         prompt += f"A: "
#     else:
#         prompt += f"A: {answer}\n\n"
#     return prompt

# def get_llama_2_chat_prompt_format_v2(instruction, question, answer=None):
#     prompt = f"[INST] Q: {instruction}\n{question} [\INST] "
#     if answer is None:
#         prompt += f""
#     else:
#         prompt += f"A: {answer}\n\n"
#     return prompt


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
        prompt += prompt_format(
            instruction=priming_instruction,
            question=priming_question,
            answer=priming_answer,
        )
    prompt += prompt_format(
        instruction=instruction, question=example_question, answer=example_answer
    )
    prompt += prompt_format(instruction=instruction, question=question)
    return prompt

def get_full_flan_t5_prompt(
    instruction,
    question,
    example_question,
    example_answer,
    priming_instruction=None,
    priming_question=None,
    priming_answer=None,
):
    def prompt_format(instruction, question, answer=None):
        prompt = f"Q: {instruction}\n" f"{question}\n"
        if answer is None:
            prompt += f"A: "
        else:
            prompt += f"A: {answer}\n\n"
        return prompt
    prompt = ""
    if (
        (priming_instruction is not None and priming_instruction != "")
        and (priming_question is not None and priming_question != "")
        and (priming_answer is not None and priming_answer != "")
    ):
        prompt += prompt_format(
            instruction=priming_instruction,
            question=priming_question,
            answer=priming_answer,
        )
    prompt += prompt_format(
        instruction=instruction, question=example_question, answer=example_answer
    )
    prompt += prompt_format(instruction=instruction, question=question)
    return prompt

def get_full_llama_2_chat_prompt(
    prompt_format,
    instruction,
    question,
    example_question,
    example_answer,
    priming_instruction=None,
    priming_question=None,
    priming_answer=None,
):
    prompt = "[INST] <<SYS>>\n\n<</SYS>>\n\n" # No system message
    if (
        (priming_instruction is not None and priming_instruction != "")
        and (priming_question is not None and priming_question != "")
        and (priming_answer is not None and priming_answer != "")
    ):
        prompt += prompt_format(
            instruction=priming_instruction,
            question=priming_question,
            answer=priming_answer,
        )
    prompt += prompt_format(
        instruction=instruction, question=example_question, answer=example_answer
    )
    prompt += prompt_format(instruction=instruction, question=question)
    prompt += " [/INST] "
    return prompt

def get_full_llama_2_chat_prompt_v2(
    prompt_format,
    instruction,
    question,
    example_question,
    example_answer,
    priming_instruction=None,
    priming_question=None,
    priming_answer=None,
):
    pt = PT(system_prompt="")
    if (
        (priming_instruction is not None and priming_instruction != "")
        and (priming_question is not None and priming_question != "")
        and (priming_answer is not None and priming_answer != "")
    ):
        pt.add_user_message(f"Q: {priming_instruction}\n{priming_question}")
        pt.add_model_reply(f"A: {priming_answer}")
    pt.add_user_message(f"Q: {instruction}\n{example_question}")
    pt.add_model_reply(f"A: {example_answer}")
    pt.add_user_message(f"Q: {instruction}\n{question}")
    return pt.build_prompt()

def get_full_llama_2_chat_prompt_v3(
    instruction,
    question,
    example_question,
    example_answer,
    priming_instruction=None,
    priming_question=None,
    priming_answer=None,
    prompt_format=None,
):
    pt = PT()
    if (
        (priming_instruction is not None and priming_instruction != "")
        and (priming_question is not None and priming_question != "")
        and (priming_answer is not None and priming_answer != "")
    ):
        pt.add_user_message(f"Q: {priming_instruction}\n{priming_question}")
        pt.add_model_reply(f"A: {priming_answer}")
    pt.add_user_message(f"Q: {instruction}\n{example_question}")
    pt.add_model_reply(f"A: {example_answer}")
    pt.add_user_message(f"Q: {instruction}\n{question}")
    return pt.build_prompt()

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
