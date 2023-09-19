import os
os.environ['TRANSFORMERS_CACHE'] = "/scratch/general/vast/u1283221/huggingface_cache"
import re
import torch
import warnings
from tqdm import tqdm
from datasets import load_dataset, Features, Value
import sys
from transformers import T5Tokenizer, T5ForConditionalGeneration
import run_experiments

tokenizer = T5Tokenizer.from_pretrained("google/flan-t5-large")
model = T5ForConditionalGeneration.from_pretrained("google/flan-t5-large", device_map="auto")

device = 'cuda' if torch.cuda.is_available() else 'cpu'
for i in range(10):
    encodings = tokenizer("Write a haiku about computers:", padding=True, truncation=True, legacy=False, return_tensors="pt").to(device)
    with torch.no_grad():
        generated_ids = model.generate(**encodings, max_new_tokens=32, num_beams=5, do_sample=True)
    generated_texts = tokenizer.batch_decode(generated_ids, skip_special_tokens=True)
    print(generated_texts)