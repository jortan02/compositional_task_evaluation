import os
import sys
import random

# Multiplication
def get_multiply_example(examples_count, min, max, seed=None):
    examples = ""
    random.seed(seed)
    for _ in range(examples_count):
        x = random.randint(min, max)
        y = random.randint(min, max)
        examples += f"{x} * {y} = {x * y}\n"
    return examples
  
def get_carry_example(examples_count, seed=None):
    examples = ""
    random.seed(seed)
    for _ in range(examples_count):
        x = random.randint(10, 99)
        examples += f"{x} // {10} = {x // 10}\n"
    return examples
  
def get_sum_example(examples_count, min, max, seed=None):
    examples = ""
    random.seed(seed)
    for _ in range(examples_count):
        x = random.randint(min, max)
        y = random.randint(min, max)
        examples += f"{x} + {y} = {x + y}\n"
    return examples
  
def get_concatenate_example(examples_count, seed=None):
    examples = ""
    random.seed(seed)
    for _ in range(examples_count):
        x = random.randint(0, 9)
        y = random.randint(0, 9)
        z = random.randint(0, 9)
        examples += f"{x} & {y} & {z} = {x}{y}{z}\n"
    return examples

def generate_multiplication_dataset(folder_path, examples_count=1, aggregate=False, example_seed=0, question_seed=1234567890):
  multiply_1_digit_example = get_multiply_example(examples_count, 0, 9, example_seed) 
  carry_example = get_carry_example(examples_count, example_seed) 
  sum_example = get_sum_example(examples_count, 0, 100, example_seed)
  concatenate_example = get_concatenate_example(examples_count, example_seed) 
  
  # TODO: Logic for example aggregation
  if aggregate:
    aggregate_example = multiply_1_digit_example + carry_example + sum_example + concatenate_example
    multiply_1_digit_example = aggregate_example
    carry_example = aggregate_example
    sum_example = aggregate_example
    concatenate_example = aggregate_example
  
  with open(os.path.join(folder_path, "multiply_1_digit.csv"), "w") as file:
    file.write('question,answer\n')
    for x in range(0, 10):
      for y in range(0, 10):
        file.write(f'"Multiply two numbers.\n###\n{multiply_1_digit_example}###\n{x} * {y} =",{x * y}\n')
  
  with open(os.path.join(folder_path, "carry.csv"), "w") as file:
    file.write('question,answer\n')
    for x in range(10, 100):
      file.write(f'"Carry the digit from the tens place.\n###\n{carry_example}###\n{x} // 10 =",{x // 10}\n')
  
  with open(os.path.join(folder_path, "sum.csv"), 'w') as file:
    file.write('question,answer\n')
    for x in range(0, 100):
      for y in range(0, 100):
        file.write(f'"Add two numbers.\n###\n{sum_example}###\n{x} + {y} =",{x + y}\n')
  
  with open(os.path.join(folder_path, "concatenate.csv"), 'w') as file:
    file.write('question,answer\n')
    for x in range(0, 10):
      for y in range(0, 10):
        for z in range(0, 10):
          file.write(f'"Concatenate the numbers.\n###\n{concatenate_example}###\n{x} & {y} & {z} =",{x}{y}{z}\n')

def generate_digit_dataset(folder_path, examples_count=1, example_seed=0, question_seed=1234567890):
  multiply_1_digit_example = get_multiply_example(examples_count, 0, 9, example_seed)  
  multiply_2_digits_example = get_multiply_example(examples_count, 10, 99, example_seed)  
  multiply_3_digits_example = get_multiply_example(examples_count, 100, 999, example_seed)  
  multiply_4_digits_example = get_multiply_example(examples_count, 1000, 9999, example_seed)  
  multiply_5_digits_example = get_multiply_example(examples_count, 10000, 99999, example_seed) 
  sum_1_digit_example = get_sum_example(examples_count, 0, 9, example_seed)   
  sum_2_digits_example = get_sum_example(examples_count, 10, 99, example_seed)   
  sum_3_digits_example = get_sum_example(examples_count, 100, 999, example_seed)   
  sum_4_digits_example = get_sum_example(examples_count, 1000, 9999, example_seed)  
  sum_5_digits_example = get_sum_example(examples_count, 10000, 99999, example_seed)  
  
  with open(os.path.join(folder_path, "multiply_1_digit.csv"), "w") as file:
    file.write('question,answer\n')
    for x in range(0, 10):
      for y in range(0, 10):
        file.write(f'"Multiply two numbers.\n###\n{multiply_1_digit_example}###\n{x} * {y} =",{x * y}\n')
  
  with open(os.path.join(folder_path, "multiply_2_digits.csv"), "w") as file:
    file.write('question,answer\n')
    for x in range(10, 100):
      for y in range(10, 100):
        file.write(f'"Multiply two numbers.\n###\n{multiply_2_digits_example}###\n{x} * {y} =",{x * y}\n')

  with open(os.path.join(folder_path, "multiply_3_digits.csv"), "w") as file:
    file.write('question,answer\n')
    for i in range(0, 10000):
      random.seed(question_seed + i)
      x = random.randint(100, 999)
      y = random.randint(100, 999)
      file.write(f'"Multiply two numbers.\n###\n{multiply_3_digits_example}###\n{x} * {y} =",{x * y}\n')
        
  with open(os.path.join(folder_path, "multiply_4_digits.csv"), "w") as file:
    file.write('question,answer\n')
    for i in range(0, 10000):
      random.seed(question_seed + i)
      x = random.randint(1000, 9999)
      y = random.randint(1000, 9999)
      file.write(f'"Multiply two numbers.\n###\n{multiply_4_digits_example}###\n{x} * {y} =",{x * y}\n')
        
  with open(os.path.join(folder_path, "multiply_5_digits.csv"), "w") as file:
    file.write('question,answer\n')
    for i in range(0, 10000):
      random.seed(question_seed + i)
      x = random.randint(10000, 99999)
      y = random.randint(10000, 99999)
      file.write(f'"Multiply two numbers.\n###\n{multiply_5_digits_example}###\n{x} * {y} =",{x * y}\n')
        
  with open(os.path.join(folder_path, "sum_1_digit.csv"), "w") as file:
    file.write('question,answer\n')
    for x in range(0, 10):
      for y in range(0, 10):
        file.write(f'"Sum two numbers.\n###\n{sum_1_digit_example}###\n{x} + {y} =",{x + y}\n')
  
  with open(os.path.join(folder_path, "sum_2_digits.csv"), "w") as file:
    file.write('question,answer\n')
    for x in range(10, 100):
      for y in range(10, 100):
        file.write(f'"Sum two numbers.\n###\n{sum_2_digits_example}###\n{x} + {y} =",{x + y}\n')

  with open(os.path.join(folder_path, "sum_3_digits.csv"), "w") as file:
    file.write('question,answer\n')
    for i in range(0, 10000):
      random.seed(question_seed + i)
      x = random.randint(100, 999)
      y = random.randint(100, 999)
      file.write(f'"Sum two numbers.\n###\n{sum_3_digits_example}###\n{x} + {y} =",{x + y}\n')
        
  with open(os.path.join(folder_path, "sum_4_digits.csv"), "w") as file:
    file.write('question,answer\n')
    for i in range(0, 10000):
        random.seed(question_seed + i)
        x = random.randint(1000, 9999)
        y = random.randint(1000, 9999)
        file.write(f'"Sum two numbers.\n###\n{sum_4_digits_example}###\n{x} + {y} =",{x + y}\n')
        
  with open(os.path.join(folder_path, "sum_5_digits.csv"), "w") as file:
    file.write('question,answer\n')
    for i in range(0, 10000):
      random.seed(question_seed + i)
      x = random.randint(10000, 99999)
      y = random.randint(10000, 99999)
      file.write(f'"Sum two numbers.\n###\n{sum_5_digits_example}###\n{x} + {y} =",{x + y}\n')
      
if __name__ == "main":
  for prompt_type in [1]:
    for example_count in [1, 3, 6]:
      MULTIPLICATION_DATASET_DIR = f"./data/multiplication/prompt_type_{prompt_type}/example_count_{example_count}/"
      os.makedirs(MULTIPLICATION_DATASET_DIR, exist_ok=True)
      generate_multiplication_dataset(MULTIPLICATION_DATASET_DIR, example_count)

      DIGIT_DATASET_DIR = f"./data/digit/prompt_type_{prompt_type}/example_count_{example_count}/"
      os.makedirs(DIGIT_DATASET_DIR, exist_ok=True)
      generate_digit_dataset(DIGIT_DATASET_DIR, example_count)
      
  # for prompt_type in [1]:
  #   for example_count in [1]:
  #     MULTIPLICATION_DATASET_DIR = f"./data/multiplication/prompt_type_{prompt_type}/aggregate_count_{example_count}/"
  #     os.makedirs(MULTIPLICATION_DATASET_DIR, exist_ok=True)
  #     generate_multiplication_dataset(MULTIPLICATION_DATASET_DIR, example_count, aggregate=True)
          
# Strings
"""
Let Uprev be an operation that takes a word, uppercases the letters, and reverses its letters.
Uprev(abc): abc -> ABC -> CBA

Let Revup be an operation that takes a word, reverses its letters, and then uppercases the letters.
Revup(abc): abc -> cba -> CBA

Reverse:
abc -> cba

Uppercase:


"""

"""
capitalize()	Converts the first character to upper case
casefold()	Converts string into lower case
center()	Returns a centered string
count()	Returns the number of times a specified value occurs in a string
encode()	Returns an encoded version of the string
endswith()	Returns true if the string ends with the specified value
expandtabs()	Sets the tab size of the string
find()	Searches the string for a specified value and returns the position of where it was found
format()	Formats specified values in a string
format_map()	Formats specified values in a string
index()	Searches the string for a specified value and returns the position of where it was found
isalnum()	Returns True if all characters in the string are alphanumeric
isalpha()	Returns True if all characters in the string are in the alphabet
isascii()	Returns True if all characters in the string are ascii characters
isdecimal()	Returns True if all characters in the string are decimals
isdigit()	Returns True if all characters in the string are digits
isidentifier()	Returns True if the string is an identifier
islower()	Returns True if all characters in the string are lower case
isnumeric()	Returns True if all characters in the string are numeric
isprintable()	Returns True if all characters in the string are printable
isspace()	Returns True if all characters in the string are whitespaces
istitle() 	Returns True if the string follows the rules of a title
isupper()	Returns True if all characters in the string are upper case
join()	Converts the elements of an iterable into a string
ljust()	Returns a left justified version of the string
lower()	Converts a string into lower case
lstrip()	Returns a left trim version of the string
maketrans()	Returns a translation table to be used in translations
partition()	Returns a tuple where the string is parted into three parts
replace()	Returns a string where a specified value is replaced with a specified value
rfind()	Searches the string for a specified value and returns the last position of where it was found
rindex()	Searches the string for a specified value and returns the last position of where it was found
rjust()	Returns a right justified version of the string
rpartition()	Returns a tuple where the string is parted into three parts
rsplit()	Splits the string at the specified separator, and returns a list
rstrip()	Returns a right trim version of the string
split()	Splits the string at the specified separator, and returns a list
splitlines()	Splits the string at line breaks and returns a list
startswith()	Returns true if the string starts with the specified value
strip()	Returns a trimmed version of the string
swapcase()	Swaps cases, lower case becomes upper case and vice versa
title()	Converts the first character of each word to upper case
translate()	Returns a translated string
upper()	Converts a string into upper case
zfill()	Fills the string with a specified number of 0 values at the beginning
"""

# with open("./data/strings/concatenate.csv", "w") as file:
#   for x in range(...):
#     for y in range(...):
#       file.write(f'"Concatenate the strings.\n###\ncount and style concatenated is countstyle.\n###\n,{x} and {y} concatenated is",{x}{y}\n')

# with open("./data/strings/reverse.csv", "w") as file:
#   for x in range(...):
#       file.write(f'"Reverse the string.\n###\nguide reversed is ediug.\n###\n,{x} reversed is",{x[::-1]}\n')

# if __name__ == "main":
#   generate_multiplication_dataset(examples_count=int(sys.argv[0]))