import sys
from transformers import T5Tokenizer, T5ForConditionalGeneration
import run_experiments
import time

start = time.time()

input_file = sys.argv[1]
output_folder = sys.argv[2]
experiment_count = int(sys.argv[3])
module = sys.argv[4]

tokenizer = T5Tokenizer.from_pretrained(module)
model = T5ForConditionalGeneration.from_pretrained(module, device_map="auto")
batch_size = int(sys.argv[5])

print(f">> Input file: {input_file}, module: {module}")
run_experiments.run_experiments(model, tokenizer, batch_size, input_file, output_folder, experiment_count)
end = time.time()
print(f">> Time: {end - start}")