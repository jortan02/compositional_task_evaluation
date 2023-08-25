import sys
import pandas as pd
import torch
import warnings
from tqdm import tqdm
from transformers import DataCollatorWithPadding
from transformers import T5Tokenizer
from torch.utils.data import DataLoader
from datasets import Dataset
import re
from transformers import T5Tokenizer, T5ForConditionalGeneration

def tokenize(batch, tokenizer):
    return tokenizer(batch["question"], padding="max_length", truncation=True)

def generate_encodings(tokenizer, dataset):
    device = 'cuda' if torch.cuda.is_available() else 'cpu'
    encodings = tokenizer(dataset["question"], padding=True, truncation=True, return_tensors="pt").to(device)
    return encodings

def generate_texts(model, tokenizer, encodings):
    with torch.no_grad():
        generated_ids = model.generate(**encodings, max_new_tokens=1024)
    generated_texts = tokenizer.batch_decode(generated_ids, skip_special_tokens=True)
    return generated_texts

def get_accuracy(expected, actual):
    correct = 0
    for index in range(len(expected)):
        prediction = re.findall(r"(?<!\d)([-]?\d*\.?\d+)", expected[index])
        if len(prediction) == 0: # No number was found in answer
            continue
        if len(prediction) > 1:
            warnings.warn(f"WARNING: Prediction contained multiple integers (Expected: {expected[index]}, Actual: {actual['answer'][index]}). Resorting to the last number found.")
        if prediction[-1] != int(prediction[-1]): # All examples' answers should be integers
            continue
        if int(prediction[-1]) == int(actual["answer"][index]):
            correct += 1
    print("Correct:", correct, "out of", len(actual))
    return correct / len(actual)

def evaluate_model(model, tokenizer, dataset, batch_size):
    shards = max(len(dataset) // batch_size, 1)
    predictions = []
    for shard_index in tqdm(range(shards)):
        dataset_shard = dataset.shard(shards, shard_index, contiguous=True)
        encodings = generate_encodings(tokenizer, dataset_shard)
        generated_texts = generate_texts(model, tokenizer, encodings)
        predictions.extend(generated_texts)
    accuracy = get_accuracy(predictions, dataset)
    return accuracy

if __name__=="__main__":
    model = T5ForConditionalGeneration.from_pretrained("google/flan-t5-base", device_map="auto")
    tokenizer = T5Tokenizer.from_pretrained("google/flan-t5-base")
    batch_size = 10000
    
    dataset = Dataset.from_pandas(pd.read_csv("./data/multiply.csv"))
    print("multiply.csv", evaluate_model(model, tokenizer, dataset, batch_size))
    
    dataset = Dataset.from_pandas(pd.read_csv("./data/multiply_1_digit.csv"))
    print("multiply_1_digit.csv", evaluate_model(model, tokenizer, dataset, batch_size))
    
    dataset = Dataset.from_pandas(pd.read_csv("./data/carry.csv"))
    print("carry.csv", evaluate_model(model, tokenizer, dataset, batch_size))
    
    dataset = Dataset.from_pandas(pd.read_csv("./data/summation.csv"))
    print("summation.csv", evaluate_model(model, tokenizer, dataset, batch_size))
    
    dataset = Dataset.from_pandas(pd.read_csv("./data/concatenation.csv"))
    print("concatenation.csv", evaluate_model(model, tokenizer, dataset, batch_size))