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
        generated_ids = model.generate(**encodings, max_new_tokens=20)
    generated_texts = tokenizer.batch_decode(generated_ids, skip_special_tokens=True)
    return generated_texts

def _get_accuracy(expected, actual):
    correct = 0
    for index in range(len(expected)):
        prediction = re.findall(r"(?<!\d)([-]?\d*\.?\d+)", expected[index])
        if len(prediction) == 0: # No number was found in answer
            continue
        if len(prediction) > 1:
            warning = f"Prediction contained multiple integers (Expected: {expected[index]}, Actual: {actual['answer'][index]}). Resorting to the last number found."
            warnings.warn(warning)
        if prediction[-1] != int(float(prediction[-1])): # All examples' answers should be integers
            continue
        if int(prediction[-1]) == int(actual["answer"][index]):
            correct += 1
    return correct / len(actual)

def _evaluate_model(model, tokenizer, dataset, batch_size):
    shards = max(len(dataset) // batch_size, 1)
    predictions = []
    for shard_index in tqdm(range(shards)):
        dataset_shard = dataset.shard(shards, shard_index, contiguous=True)
        encodings = _generate_encodings(tokenizer, dataset_shard)
        generated_texts = _generate_texts(model, tokenizer, encodings)
        predictions.extend(generated_texts)
    # accuracy = get_accuracy(predictions, dataset)
    # return accuracy, predictions
    return predictions

def _add_prediction(example, index, predictions):
    example["prediction"] = predictions[index]
    return example

def run_experiment(model, tokenizer, batch_size, input_file, output_file):
    dataset = load_dataset("csv", data_files=input_file, features=Features({"question": Value("string"), "answer": Value("string")}))["train"]
    # accuracy, predictions = evaluate_model(model, tokenizer, dataset, batch_size)
    predictions = _evaluate_model(model, tokenizer, dataset, batch_size)
    dataset = dataset.map(_add_prediction, with_indices=True, fn_kwargs={"predictions": predictions})
    dataset.to_csv(output_file)
    # print("File:", input_file, "Accuracy:", accuracy)