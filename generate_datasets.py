import os

new_path = "./data"
if not os.path.exists(new_path):
    os.makedirs(new_path)

with open("./data/multiply.csv", "w") as file:
  file.write('question,answer\n')
  for x in range(0, 1000):
    for y in range(0, 1000):
      file.write(f'"Multiply two numbers.\n###\n5 * 3 = 15\n###\n{x} * {y} =",{x * y}\n')
      
with open("./data/multiply_1_digit.csv", "w") as file:
  file.write('question,answer\n')
  for x in range(0, 10):
    for y in range(0, 10):
      file.write(f'"Multiply two numbers.\n###\n5 * 3 = 15\n###\n{x} * {y} =",{x * y}\n')
      
with open("./data/carry.csv", "w") as file:
  file.write('question,answer\n')
  for x in range(0, 100):
    file.write(f'"Carry the digit from the tens place.\n###\n15 // 10 = 1\n###\n{x} // 10 =",{x // 10}\n')
    
with open('./data/summation.csv', 'w') as file:
  file.write('question,answer\n')
  for x in range(0, 1000):
    for y in range(0, 1000):
      file.write(f'"Add two numbers.\n###\n5 + 3 = 8\n###\n{x} + {y} =",{x + y}\n')
      
with open('./data/concatenation.csv', 'w') as file:
  file.write('question,answer\n')
  for x in range(0, 100):
    for y in range(0, 100):
      for z in range(0, 100):
        file.write(f'"Concatenate the numbers.\n###\n1, 5, 3 = 153\n###\n{x}, {y}, {z} =",{x}{y}{z}\n')