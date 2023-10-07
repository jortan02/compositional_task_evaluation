import os
import re
import torch
import warnings
from tqdm import tqdm
from transformers import PreTrainedTokenizer, PreTrainedModel
from datasets import load_dataset, Features, Value
from datasets.arrow_dataset import Dataset
from transformers.tokenization_utils_base import BatchEncoding

def _create_prompt(example: dict[str, str], index: int):
    prompt = \
    (
    f"{example['instruction']}\n"
    "###\n"
    f"{example['example']}\n"
    "###\n"
    f"{example['question']}"
    )
    example["prompt"] = prompt
    return example

def _generate_encodings(tokenizer: PreTrainedTokenizer, dataset: Dataset):
    device = 'cuda' if torch.cuda.is_available() else 'cpu'
    dataset = dataset.map(_create_prompt, with_indices=True)
    encodings = tokenizer(dataset["prompt"], padding=True, truncation=True, return_tensors="pt").to(device)
    return encodings

def _generate_texts(model: PreTrainedModel, tokenizer: PreTrainedTokenizer, encodings: BatchEncoding):
    with torch.no_grad():
        generated_ids = model.generate(**encodings, max_new_tokens=20, num_beams=5, do_sample=True)
    generated_texts = tokenizer.batch_decode(generated_ids, skip_special_tokens=True)
    return generated_texts

def _evaluate_model(model: PreTrainedModel, tokenizer: PreTrainedTokenizer, dataset: Dataset, batch_size: int) -> list[str]:
    shards = max(len(dataset) // batch_size, 1)
    predictions = []
    for shard_index in tqdm(range(shards)):
        dataset_shard = dataset.shard(shards, shard_index, contiguous=True)
        encodings = _generate_encodings(tokenizer, dataset_shard)
        generated_texts = _generate_texts(model, tokenizer, encodings)
        predictions.extend(generated_texts)
    return predictions

def _add_prediction(example: dict[str, str], index: int, predictions: list[str]) -> dict[str, str]:
    example["prediction"] = predictions[index]
    return example

def run_experiments(model: PreTrainedModel, tokenizer: PreTrainedTokenizer, batch_size: int, input_file: str, output_path: str, experiment_count: int):
    os.makedirs(output_path, exist_ok=True)
    dataset = load_dataset("csv", data_files=input_file, features=Features({"instruction": Value("string"), "example": Value("string"), "question": Value("string"), "answer": Value("string")}))["train"]
    print(type(dataset))
    for experiment in range(experiment_count):
        predictions = _evaluate_model(model, tokenizer, dataset, batch_size)
        dataset = dataset.map(_add_prediction, with_indices=True, fn_kwargs={"predictions": predictions})
        output_path = os.path.join(output_path, f"experiment-{experiment + 1}.csv")
        dataset.to_csv(output_path)