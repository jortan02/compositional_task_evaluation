import os
os.environ['TRANSFORMERS_CACHE'] = "/scratch/general/vast/u1283221/huggingface_cache"
import sys
from transformers import T5Tokenizer, T5ForConditionalGeneration
import experiment

input_file = sys.argv[1]
output_file = sys.argv[2]
module = sys.argv[3]
tokenizer = T5Tokenizer.from_pretrained(module)
model = T5ForConditionalGeneration.from_pretrained(module, device_map="auto")
batch_size = 1000

experiment.run_experiment(model, tokenizer, batch_size, input_file, output_file)