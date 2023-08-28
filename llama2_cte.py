import os
os.environ['TRANSFORMERS_CACHE'] = "/scratch/general/vast/u1283221/huggingface_cache"
import sys
from transformers import AutoTokenizer, AutoModelForCausalLM
import experiment

input_file = sys.argv[1]
output_file = sys.argv[2]
module = sys.argv[3]
tokenizer = AutoTokenizer.from_pretrained(module)
tokenizer.add_special_tokens({'pad_token': '[PAD]'})
model = AutoModelForCausalLM.from_pretrained(module, device_map="auto")
batch_size = 50

experiment.run_experiment(model, tokenizer, batch_size, input_file, output_file)