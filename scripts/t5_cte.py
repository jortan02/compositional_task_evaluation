import sys
from transformers import T5Tokenizer, T5ForConditionalGeneration
import experiment
import time

start = time.time()

input_file_path = sys.argv[1]
output_file_path = sys.argv[2]
module = sys.argv[3]

tokenizer = T5Tokenizer.from_pretrained(module)
model = T5ForConditionalGeneration.from_pretrained(module, device_map="auto")
batch_size = int(sys.argv[4])

print(f">> Input file: {input_file_path}, Output file: {output_file_path}, Module: {module}, Batch size: {batch_size}")

experiment.run_experiment(model, tokenizer, batch_size, input_file_path, output_file_path)
end = time.time()
print(f">> Time: {end - start}")