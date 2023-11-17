import sys
from transformers import LlamaTokenizerFast, LlamaForCausalLM
import experiment
import time

start = time.time()

input_file_path = sys.argv[1]
output_file_path = sys.argv[2]
module = sys.argv[3]

tokenizer = LlamaTokenizerFast.from_pretrained(module, max_position_embeddings=4096)
tokenizer.add_special_tokens({'pad_token': '[PAD]'})
tokenizer.padding_side = "left"
model = LlamaForCausalLM.from_pretrained(module, device_map="auto")
model.config.pad_token_id = tokenizer.pad_token_id
model.generation_config.pad_token_id = tokenizer.pad_token_id
model.resize_token_embeddings(len(tokenizer), pad_to_multiple_of=64)
# model.model.embed_tokens.padding_idx = tokenizer.pad_token_id
batch_size = int(sys.argv[4])

print(f">> Input file: {input_file_path}, Output file: {output_file_path}, Module: {module}, Batch size: {batch_size}")

experiment.run_experiment(model, tokenizer, batch_size, input_file_path, output_file_path)
end = time.time()
print(f">> Time: {end - start}")