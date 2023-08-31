import sys
from transformers import AutoTokenizer, AutoModelForCausalLM
import run_experiment

input_file = sys.argv[1]
output_file = sys.argv[2]
module = sys.argv[3]
tokenizer = AutoTokenizer.from_pretrained(module, max_position_embeddings=4096)
tokenizer.add_special_tokens({'pad_token': '[PAD]'})
model = AutoModelForCausalLM.from_pretrained(module, device_map="auto")
batch_size = 10

# experiment.run_experiment(model, tokenizer, batch_size, input_file, output_file)
run_experiment.run_experiment(model, tokenizer, batch_size, input_file, output_file, load_in_4bit=True)