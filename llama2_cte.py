import sys
from transformers import AutoTokenizer, AutoModelForCausalLM
import run_experiments

input_file = sys.argv[1]
output_folder = sys.argv[2]
experiment_count = sys.argv[3]
module = sys.argv[4]

tokenizer = AutoTokenizer.from_pretrained(module, max_position_embeddings=4096)
tokenizer.add_special_tokens({'pad_token': '[PAD]'})
model = AutoModelForCausalLM.from_pretrained(module, device_map="auto")
batch_size = 10

run_experiments.run_experiments(model, tokenizer, batch_size, input_file, output_folder, experiment_count)