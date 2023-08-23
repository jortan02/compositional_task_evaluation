from datasets import load_dataset
import torch
import warnings
from tqdm import tqdm
from transformers import T5Tokenizer, T5ForConditionalGeneration
from transformers import DataCollatorWithPadding
from transformers import T5Tokenizer
from torch.utils.data import DataLoader

multiply_dataset = load_dataset("csv", data_files="multiply.csv", delimiter=',', column_names=['question', 'answer'])
multiply_1_digit_dataset = load_dataset("csv", data_files="multiply_1_digit.csv", delimiter=',', column_names=['question', 'answer'])
carry_dataset = load_dataset("csv", data_files="carry.csv", delimiter=',', column_names=['question', 'answer'])
summation_dataset = load_dataset("csv", data_files="summation.csv", delimiter=',', column_names=['question', 'answer'])
concatenation_dataset = load_dataset("csv", data_files="concatenation.csv", delimiter=',', column_names=['question', 'answer'])


def tokenize(batch, tokenizer):
    return tokenizer(batch["question"], padding="max_length", truncation=True)

def generate_encodings(tokenizer, dataset, batch_size=16):
    tokenized_datasets = dataset["train"].map(tokenize, batched=True, fn_kwargs={"tokenizer": tokenizer})
    tokenized_datasets = tokenized_datasets.remove_columns(["question"])
    data_collator = DataCollatorWithPadding(tokenizer=tokenizer)
    tokenized_datasets_dataloader = DataLoader(
        tokenized_datasets, shuffle=True, batch_size=batch_size, collate_fn=data_collator
    )
    return tokenized_datasets_dataloader

# not sure how to do this
def generate_texts(model, encodings_dataloader):
    for batch in encodings_dataloader:
        with torch.no_grad():
            generated_ids = model.generate(**batch)
        generated_texts = tokenizer.batch_decode(generated_ids, skip_special_tokens=True)
    return generated_texts

def get_accuracy(expected, actual):
    correct = 0
    for index in range(len(expected)):
        prediction = [int(d) for d in re.findall(r'-?\d+', tokenizer.decode(expected[index][0]))]
        if len(prediction) > 1:
            warnings.warn("WARNING: Prediction contained multiple integers; resorting to the first integer found.")
        if int(prediction[0]) == int(actual["answer"][index]):
            correct += 1
    return correct  / len(actual["question"])
        
def validate_model(model, tokenizer, dataset):
    expected_texts = generate_texts(model, tokenizer, dataset)
    return get_accuracy(expected_texts, dataset)

def tokenize(batch, tokenizer):
    return tokenizer(batch["question"], padding="max_length", truncation=True)

if __name__ == '__main__':
    tokenizer = T5Tokenizer.from_pretrained("google/flan-t5-base")
    model = T5ForConditionalGeneration.from_pretrained("google/flan-t5-base", device_map="auto")
    
    encodings_dataloader = generate_encodings(tokenizer, multiply_dataset["train"])