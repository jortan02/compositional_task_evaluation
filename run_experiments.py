import os
import re
import torch
import warnings
from tqdm import tqdm
from datasets import load_dataset, Features, Value

def _generate_encodings(tokenizer, dataset):
    device = 'cuda' if torch.cuda.is_available() else 'cpu'
    encodings = tokenizer(dataset["question"], padding=True, truncation=True, return_tensors="pt").to(device)
    return encodings

def _generate_texts(model, tokenizer, encodings):
    with torch.no_grad():
        generated_ids = model.generate(**encodings, max_new_tokens=20, num_beams=5, do_sample=True)
    generated_texts = tokenizer.batch_decode(generated_ids, skip_special_tokens=True)
    return generated_texts

def _evaluate_model(model, tokenizer, dataset, batch_size):
    shards = max(len(dataset) // batch_size, 1)
    predictions = []
    for shard_index in tqdm(range(shards)):
        dataset_shard = dataset.shard(shards, shard_index, contiguous=True)
        encodings = _generate_encodings(tokenizer, dataset_shard)
        generated_texts = _generate_texts(model, tokenizer, encodings)
        predictions.extend(generated_texts)
    return predictions

def _add_prediction(example, index, predictions):
    example["prediction"] = predictions[index]
    return example

# TODO: https://stackoverflow.com/questions/12517451/automatically-creating-directories-with-file-output
def run_experiments(model, tokenizer, batch_size, input_file, output_folder, experiment_count):
    os.makedirs(output_folder, exist_ok=True)
    dataset = load_dataset("csv", data_files=input_file, features=Features({"question": Value("string"), "answer": Value("string")}))["train"]
    for experiment in range(experiment_count):
        predictions = _evaluate_model(model, tokenizer, dataset, batch_size)
        dataset = dataset.map(_add_prediction, with_indices=True, fn_kwargs={"predictions": predictions})
        output_path = os.path.join(output_folder, f"experiment-{experiment + 1}.csv")
        dataset.to_csv(output_path)