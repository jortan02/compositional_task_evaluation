import os
import sys
from transformers import T5Tokenizer, T5ForConditionalGeneration
from experiment import *
from datasets_helper import *
import time

start = time.time()

input_file_path = sys.argv[1]
output_file_path = sys.argv[2]
module = sys.argv[3]

if os.path.isfile(output_file_path):
    print("File already exists:", output_file_path)
    end = time.time()
    print(f">> Time: {end - start}")
    exit()

tokenizer = T5Tokenizer.from_pretrained(module)
model = T5ForConditionalGeneration.from_pretrained(module, device_map="auto")
batch_size = int(sys.argv[4])

print(
    f">> Input file: {input_file_path}, Output file: {output_file_path}, Module: {module}, Batch size: {batch_size}"
)

run_experiment_model_tokenizer(
    get_flan_t5_prompt_format,
    model,
    tokenizer,
    batch_size,
    input_file_path,
    output_file_path,
)
end = time.time()
print(f">> Time: {end - start}")
