# %%
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
    if not os.path.isfile(output_file_path):
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
        )
        prompt_dataset = raw_dataset.map(_create_prompt)
        tokenized_prompt_dataset = prompt_dataset.map(
            _tokenize_prompt, fn_kwargs={"tokenizer": tokenizer}
        )
        tokenized_prompt_dataset = tokenized_prompt_dataset.remove_columns(
            ["priming", "instruction", "example", "question", "answer", "prompt"]
        )
        tokenized_prompt_dataset.set_format("torch")
        data_collator = DataCollatorWithPadding(tokenizer)
        data_loader = DataLoader(tokenized_prompt_dataset["train"], batch_size=batch_size, collate_fn=data_collator)
        predictions = []
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
        raw_dataset["train"].to_csv(output_file_path)

# %%
import os
os.environ['TRANSFORMERS_CACHE'] = "/scratch/general/vast/u1283221/huggingface_cache"
import sys
from transformers import T5Tokenizer, T5ForConditionalGeneration

import time

start = time.time()

input_file_path = "../data/multiplication/instruction_type-1/prompt_type-1/carry.csv"
output_file_path = "./test.csv"
module = "google/flan-t5-small"

tokenizer = T5Tokenizer.from_pretrained(module)
model = T5ForConditionalGeneration.from_pretrained(module, device_map="cuda")
batch_size = 64

print(f">> Input file: {input_file_path}, Output file: {output_file_path}, Module: {module}, Batch size: {batch_size}")

# run_experiment(model, tokenizer, batch_size, input_file_path, output_file_path)
end = time.time()
print(f">> Time: {end - start}")

# %%
# if not os.path.isfile(output_file_path):
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
)
prompt_dataset = raw_dataset.map(_create_prompt)
tokenized_prompt_dataset = prompt_dataset.map(
    _tokenize_prompt, fn_kwargs={"tokenizer": tokenizer}
)
tokenized_prompt_dataset = tokenized_prompt_dataset.remove_columns(
    ["priming", "instruction", "example", "question", "answer", "prompt"]
)
tokenized_prompt_dataset.set_format("torch")
data_collator = DataCollatorWithPadding(tokenizer)
data_loader = DataLoader(tokenized_prompt_dataset["train"], batch_size=batch_size, collate_fn=data_collator)
predictions = []
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
raw_dataset["train"].to_csv(output_file_path)

# %%
# for i in range(450):
#     print(tokenized_prompt_dataset["train"][i]['input_ids'].shape)

# %%
# tokenized_prompt_dataset["train"]["input_ids"]


