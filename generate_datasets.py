import os
import sys

# Multiplication
import random
def get_multiply_example(examples_count, min, max, seed=0):
    examples = ""
    random.seed(seed)
    for _ in range(examples_count):
        x = random.randint(min, max)
        y = random.randint(min, max)
        examples += f"{x} * {y} = {x * y}\n"
    return examples
  
def get_carry_example(examples_count, seed=0):
    examples = ""
    random.seed(seed)
    for _ in range(examples_count):
        x = random.randint(10, 99)
        examples += f"{x} // {10} = {x // 10}\n"
    return examples
  
def get_sum_example(examples_count, min, max, seed=0):
    examples = ""
    random.seed(seed)
    for _ in range(examples_count):
        x = random.randint(min, max)
        y = random.randint(min, max)
        examples += f"{x} + {y} = {x + y}\n"
    return examples
  
def get_concatenate_example(examples_count, seed=0):
    examples = ""
    random.seed(seed)
    for _ in range(examples_count):
        x = random.randint(0, 9)
        y = random.randint(0, 9)
        z = random.randint(0, 9)
        examples += f"{x} & {y} & {z} = {x}{y}{z}\n"
    return examples

def generate_multiplication_dataset(examples_count=1):
  multiply_example = get_multiply_example(examples_count, 0, 99999)
  with open(os.path.join(MULTIPLICATION_DATASET_DIR, "multiply.csv"), "w") as file:
    file.write('question,answer\n')
    for x in range(0, 100):
      for y in range(0, 100):
        file.write(f'"Multiply two numbers.\n###\n{multiply_example}###\n{x} * {y} =",{x * y}\n')
    for _ in range(0, 10000):
        random.seed(0)
        x = random.randint(100, 999)
        y = random.randint(100, 999)
        file.write(f'"Multiply two numbers.\n###\n{multiply_example}###\n{x} * {y} =",{x * y}\n')
        
  multiply_1_digit_example = get_multiply_example(examples_count, 0, 9)  
  with open(os.path.join(MULTIPLICATION_DATASET_DIR, "multiply_1_digit.csv"), "w") as file:
    file.write('question,answer\n')
    for x in range(0, 10):
      for y in range(0, 10):
        file.write(f'"Multiply two numbers.\n###\n{multiply_1_digit_example}###\n{x} * {y} =",{x * y}\n')
  
  multiply_2_digits_example = get_multiply_example(examples_count, 10, 99)  
  with open(os.path.join(MULTIPLICATION_DATASET_DIR, "multiply_2_digits.csv"), "w") as file:
    file.write('question,answer\n')
    for x in range(10, 100):
      for y in range(10, 100):
        file.write(f'"Multiply two numbers.\n###\n{multiply_2_digits_example}###\n{x} * {y} =",{x * y}\n')

  multiply_3_digits_example = get_multiply_example(examples_count, 100, 999)  
  with open(os.path.join(MULTIPLICATION_DATASET_DIR, "multiply_3_digits.csv"), "w") as file:
    file.write('question,answer\n')
    for _ in range(0, 10000):
        random.seed(0)
        x = random.randint(100, 999)
        y = random.randint(100, 999)
        file.write(f'"Multiply two numbers.\n###\n{multiply_3_digits_example}###\n{x} * {y} =",{x * y}\n')
  
  carry_example = get_carry_example(examples_count)      
  with open(os.path.join(MULTIPLICATION_DATASET_DIR, "carry.csv"), "w") as file:
    file.write('question,answer\n')
    for x in range(10, 100):
      file.write(f'"Carry the digit from the tens place.\n###\n{carry_example}###\n{x} // 10 =",{x // 10}\n')
  
  sum_example = get_sum_example(examples_count, 0, 100)
  with open(os.path.join(MULTIPLICATION_DATASET_DIR, "sum.csv"), 'w') as file:
    file.write('question,answer\n')
    for x in range(0, 100):
      for y in range(0, 100):
        file.write(f'"Add two numbers.\n###\n{sum_example}###\n{x} + {y} =",{x + y}\n')
  
  concatenate_example = get_concatenate_example(examples_count)  
  with open(os.path.join(MULTIPLICATION_DATASET_DIR, "concatenate.csv"), 'w') as file:
    file.write('question,answer\n')
    for x in range(0, 10):
      for y in range(0, 10):
        for z in range(0, 10):
          file.write(f'"Concatenate the numbers.\n###\n{concatenate_example}###\n{x} & {y} & {z} =",{x}{y}{z}\n')


examples_count = 6
MULTIPLICATION_DATASET_DIR = f"./data/multiplication_ex_{examples_count}/"
os.makedirs(MULTIPLICATION_DATASET_DIR, exist_ok=True)
    
generate_multiplication_dataset(examples_count)
        
# Strings
# with open("./data/strings/concatenate.csv", "w") as file:
#   for x in range(...):
#     for y in range(...):
#       file.write(f'"Concatenate the strings.\n###\ncount and style concatenated is countstyle.\n###\n,{x} and {y} concatenated is",{x}{y}\n')

# with open("./data/strings/reverse.csv", "w") as file:
#   for x in range(...):
#       file.write(f'"Reverse the string.\n###\nguide reversed is ediug.\n###\n,{x} reversed is",{x[::-1]}\n')

# if __name__ == "main":
#   generate_multiplication_dataset(examples_count=int(sys.argv[0]))