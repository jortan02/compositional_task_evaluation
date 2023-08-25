import os
import torch
import warnings
from tqdm import tqdm
from transformers import DataCollatorWithPadding
from transformers import T5Tokenizer
from torch.utils.data import DataLoader
from datasets import load_dataset
import re
from transformers import T5Tokenizer, T5ForConditionalGeneration


def generate_encodings(tokenizer, dataset):
    device = 'cuda' if torch.cuda.is_available() else 'cpu'
    encodings = tokenizer(dataset["question"], padding=True, truncation=True, return_tensors="pt").to(device)
    return encodings

def generate_texts(model, tokenizer, encodings):
    with torch.no_grad():
        generated_ids = model.generate(**encodings, max_new_tokens=20)
    generated_texts = tokenizer.batch_decode(generated_ids, skip_special_tokens=True)
    return generated_texts

def get_accuracy(expected, actual):
    correct = 0
    for index in range(len(expected)):
        prediction = re.findall(r"(?<!\d)([-]?\d*\.?\d+)", expected[index])
        if len(prediction) == 0: # No number was found in answer
            continue
        if len(prediction) > 1:
            warnings.warn(f"Prediction contained multiple integers (Expected: {expected[index]}, Actual: {actual['answer'][index]}). Resorting to the last number found.")
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
    return accuracy, predictions

def add_prediction(example, index, predictions):
    return {"prediction": predictions[index]}    

def run_experiment(model, tokenizer, batch_size, input_file, output_file):
    dataset = load_dataset("csv", data_files=input_file)["train"]
    accuracy, predictions = evaluate_model(model, tokenizer, dataset, batch_size)
    dataset = dataset.map(add_prediction, with_indices=True, fn_kwargs={"predictions": predictions})
    dataset.to_csv(output_file)
    print(input_file, accuracy)

if __name__=="__main__":
    new_path = "./results"
    if not os.path.exists(new_path):
        os.makedirs(new_path)
        
    model = T5ForConditionalGeneration.from_pretrained("google/flan-t5-base", device_map="auto")
    tokenizer = T5Tokenizer.from_pretrained("google/flan-t5-base")
    batch_size = 1000
    
    run_experiment(model, tokenizer, batch_size, input_file="./data/multiply.csv", output_file="./results/multiply_results.csv")
    run_experiment(model, tokenizer, batch_size, input_file="./data/multiply_1_digit.csv", output_file="./results/multiply_1_digit_results.csv")
    run_experiment(model, tokenizer, batch_size, input_file="./data/carry.csv", output_file="./results/carry_results.csv")
    run_experiment(model, tokenizer, batch_size, input_file="./data/summation.csv", output_file="./results/summation_results.csv")
    run_experiment(model, tokenizer, batch_size, input_file="./data/concatenation.csv", output_file="./results/concatenation_results.csv")