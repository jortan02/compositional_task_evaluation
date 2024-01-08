import os
import torch
from torch.utils.data import DataLoader
from tqdm.auto import tqdm
from transformers import PreTrainedTokenizer, PreTrainedModel, DataCollatorWithPadding
from datasets import load_dataset, Features, Value
from transformers.pipelines.pt_utils import KeyDataset
from datasets_helper import get_full_prompt


def _create_prompt(example: dict[str, str], prompt_format):
    prompt = get_full_prompt(
        prompt_format,
        instruction=example["instruction"],
        question=example["question"],
        example_question=example["example_question"],
        example_answer=example["example_answer"],
        priming_instruction=example["priming_instruction"],
        priming_question=example["priming_question"],
        priming_answer=example["priming_answer"],
    )
    example["prompt"] = prompt
    return example


def _tokenize_prompt(example: dict[str, str], tokenizer: PreTrainedTokenizer):
    return tokenizer(example["prompt"], truncation=True)


def _add_prediction(
    example: dict[str, str], index: int, predictions: list[str]
) -> dict[str, str]:
    example["prediction"] = predictions[index]
    return example


def run_experiment_model_tokenizer(
    prompt_format,
    model: PreTrainedModel,
    tokenizer: PreTrainedTokenizer,
    batch_size: int,
    input_file_path: str,
    output_file_path: str,
):
    if os.path.isfile(output_file_path):
        return
    device = torch.device("cuda")
    raw_dataset = load_dataset(
        "csv",
        data_files=input_file_path,
        features=Features(
            {
                "priming_instruction": Value("string"),
                "priming_question": Value("string"),
                "priming_answer": Value("string"),
                "instruction": Value("string"),
                "example_question": Value("string"),
                "example_answer": Value("string"),
                "question": Value("string"),
                "answer": Value("string"),
            }
        ),
    )["train"]
    prompt_dataset = raw_dataset.map(
        _create_prompt, fn_kwargs={"prompt_format": prompt_format}, num_proc=8
    )
    tokenized_prompt_dataset = prompt_dataset.map(
        _tokenize_prompt, fn_kwargs={"tokenizer": tokenizer}, num_proc=8
    )
    tokenized_prompt_dataset = tokenized_prompt_dataset.remove_columns(
        [
            "priming_instruction",
            "priming_question",
            "priming_answer",
            "instruction",
            "example_question",
            "example_answer",
            "question",
            "answer",
            "prompt",
        ]
    )
    tokenized_prompt_dataset.set_format("torch")
    data_collator = DataCollatorWithPadding(tokenizer)
    data_loader = DataLoader(
        tokenized_prompt_dataset, batch_size=batch_size, collate_fn=data_collator
    )
    predictions = []
    for batch in tqdm(data_loader):
        batch = {k: v.to(device) for k, v in batch.items()}
        with torch.no_grad():
            generated_ids = model.generate(
                **batch,
                max_new_tokens=20,
                num_beams=5,
                do_sample=True,
                num_return_sequences=1
            )
        generated_texts = tokenizer.batch_decode(
            generated_ids, skip_special_tokens=True
        )
        predictions.extend(generated_texts)
    raw_dataset = raw_dataset.map(
        _add_prediction, with_indices=True, fn_kwargs={"predictions": predictions}, num_proc=8
    )
    os.makedirs(os.path.dirname(output_file_path), exist_ok=True)
    raw_dataset.to_csv(output_file_path, index=False)


def run_experiment_pipe(
    prompt_format,
    pipe,
    batch_size: int,
    input_file_path: str,
    output_file_path: str,
):
    raw_dataset = load_dataset(
        "csv",
        data_files=input_file_path,
        features=Features(
            {
                "priming_instruction": Value("string"),
                "priming_question": Value("string"),
                "priming_answer": Value("string"),
                "instruction": Value("string"),
                "example_question": Value("string"),
                "example_answer": Value("string"),
                "question": Value("string"),
                "answer": Value("string"),
            }
        ),
    )["train"]
    prompt_dataset = raw_dataset.map(
        _create_prompt, fn_kwargs={"prompt_format": prompt_format}, num_proc=8
    )
    predictions = []
    for outputs in tqdm(
        pipe(
            KeyDataset(prompt_dataset, "prompt"),
            batch_size=batch_size,
            max_new_tokens=20,
            num_beams=5,
            do_sample=True,
            return_full_text=False,
        )
    ):
        generated_texts = [output["generated_text"] for output in outputs]
        predictions.extend(generated_texts)
    raw_dataset = raw_dataset.map(
        _add_prediction, with_indices=True, fn_kwargs={"predictions": predictions}, num_proc=8
    )
    os.makedirs(os.path.dirname(output_file_path), exist_ok=True)
    raw_dataset.to_csv(output_file_path, index=False)
