# import time
# from outlines import models, generate, samplers
# from datasets_helper import *
# from torch.utils.data import DataLoader
# from datasets import load_dataset, Features, Value

# module="meta-llama/Llama-2-7b-chat-hf"

# model = models.transformers(module)
# sampler = samplers.beam_search(beams=5)
# generator = generate.text(model, sampler)


# prompt = get_full_prompt(get_llama_2_chat_prompt_format, "Concatenate the two word lists.", "Concatenate of testis, poplin, io and cakile, trip, bextra is what?", "testis, poplin, io, cakile, trip, bextra", "Concatenate of testis, poplin, io and cakile, trip, bextra is what?")
# print("PROMPT:")
# print(prompt)
# print("MODEL:")
# start = time.time()
# unstructured = generator(prompt, max_tokens=32)[0]
# end = time.time()
# print(f">> Time: {end - start}")
# print(unstructured)

# def _create_prompt(example: dict[str, str], prompt_format):
#     prompt = get_full_prompt(
#         prompt_format,
#         instruction=example["instruction"],
#         question=example["question"],
#         example_question=example["example_question"],
#         example_answer=example["example_answer"],
#         priming_instruction=example["priming_instruction"],
#         priming_question=example["priming_question"],
#         priming_answer=example["priming_answer"],
#     )
#     example["prompt"] = prompt
#     return example

# input_file_path = "./data/string-v2/uppercase/section-1.csv"
# prompt_format = get_llama_2_chat_prompt_format
# batch_size = 10
# generator = generate.text(model)
# raw_dataset = load_dataset(
#     "csv",
#     data_files=input_file_path,
#     features=Features(
#         {
#             "priming_instruction": Value("string"),
#             "priming_question": Value("string"),
#             "priming_answer": Value("string"),
#             "instruction": Value("string"),
#             "example_question": Value("string"),
#             "example_answer": Value("string"),
#             "question": Value("string"),
#             "answer": Value("string"),
#         }
#     ),
# )["train"]

# prompt_dataset = raw_dataset.map(
#     _create_prompt, fn_kwargs={"prompt_format": prompt_format}, num_proc=8
# )

# prompt_dataset = prompt_dataset.remove_columns(
#     [
#         "priming_instruction",
#         "priming_question",
#         "priming_answer",
#         "instruction",
#         "example_question",
#         "example_answer",
#         "question",
#         "answer",
#     ]
# )

# loader = DataLoader(prompt_dataset, batch_size)

# for batch in loader:
#     generator(batch["prompt"], max_tokens=32)
#     break


from outlines import models, generate, samplers
import os
os.environ['TRANSFORMERS_CACHE'] = "/scratch/general/vast/u1283221/huggingface_cache"

model = models.transformers("mistralai/Mistral-7B-Instruct-v0.2", model_kwargs={"device_map": "auto"})
sampler = samplers.beam_search(2)

generator = generate.text(model, sampler)
answer = generator(["What is 2+2?", "What is an apple?"], max_tokens=32)

print(answer)

for a in answer:
    print(a)
# 4