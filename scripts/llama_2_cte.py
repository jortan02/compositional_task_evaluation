import os
import sys
from transformers import AutoTokenizer, AutoModelForCausalLM
from transformers import pipeline
from experiment import *
from datasets_helper import *
import time

start = time.time()

input_file_path = sys.argv[1]
output_file_path = sys.argv[2]
module = sys.argv[3]
batch_size = int(sys.argv[4])

if os.path.isfile(output_file_path):
    print("File already exists:", output_file_path)
    end = time.time()
    print(f">> Time: {end - start}")
    exit()

tokenizer = AutoTokenizer.from_pretrained(module)
pipe = pipeline("text-generation", model=module, device_map="auto")
pipe.tokenizer.pad_token_id = pipe.model.config.eos_token_id

print(
    f">> Input file: {input_file_path}, Output file: {output_file_path}, Module: {module}, Batch size: {batch_size}"
)

run_experiment_pipe(
    get_full_llama_2_chat_prompt_v3,
    tokenizer,
    pipe,
    batch_size,
    input_file_path,
    output_file_path,
)
end = time.time()
print(f">> Time: {end - start}")
