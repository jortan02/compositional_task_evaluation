import os
import torch
from torch.utils.data import DataLoader
from tqdm import tqdm
from transformers import PreTrainedTokenizer, PreTrainedModel, DataCollatorWithPadding
from datasets import load_dataset, Features, Value

from datasets_helper import prompt_format

def _create_prompt(example: dict[str, str]):
    prompt = prompt_format(
        priming=example["priming"] if example["priming"] is not None else "",
        instruction=example["instruction"],
        example=example["example"],
        question=example["question"],
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


def run_experiment(
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
                "priming": Value("string"),
                "instruction": Value("string"),
                "example": Value("string"),
                "question": Value("string"),
                "answer": Value("string"),
            }
        ),
    )["train"]
    prompt_dataset = raw_dataset.map(_create_prompt)
    tokenized_prompt_dataset = prompt_dataset.map(
        _tokenize_prompt, fn_kwargs={"tokenizer": tokenizer}
    )
    tokenized_prompt_dataset = tokenized_prompt_dataset.remove_columns(
        ["priming", "instruction", "example", "question", "answer", "prompt"]
    )
    tokenized_prompt_dataset.set_format("torch")
    data_collator = DataCollatorWithPadding(tokenizer)
    data_loader = DataLoader(tokenized_prompt_dataset, batch_size=batch_size, collate_fn=data_collator)
    predictions = []
    model.eval()
    for batch in tqdm(data_loader):
        batch = {k: v.to(device) for k, v in batch.items()}
        with torch.no_grad():
            generated_ids = model.generate(
                **batch, max_new_tokens=20, num_beams=5, do_sample=True
            )
        generated_texts = tokenizer.batch_decode(
            generated_ids, skip_special_tokens=True
        )
        predictions.extend(generated_texts)
    raw_dataset = raw_dataset.map(
        _add_prediction, with_indices=True, fn_kwargs={"predictions": predictions}
    )
    os.makedirs(os.path.dirname(output_file_path), exist_ok=True)
    raw_dataset.to_csv(output_file_path)