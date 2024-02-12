import random
from datasets_helper import *

def get_int_samples(
    min: int, max: int, question_seed: int | None, sample_count: int = 1000
):
    samples_x = []
    samples_y = []
    for i in range(sample_count):
        random.seed(question_seed + i)
        x = random.randint(min, max)
        y = random.randint(min, max)
        samples_x.append(x)
        samples_y.append(y)
    return samples_x, samples_y

def create_csvs(
    dataset_folder_path: str,
    example_seeds: list[int] = range(5),
    question_seed: int = 1234567890,
):
    carry_dataset = {
        "instruction": "Carry the digit from the tens place.",
        "questions": [f"The result of {x} // 10 is what?" for x in range(10, 100)],
        "answers": [f"{x // 10}" for x in range(10, 100)],
    }
    carry_samples = sample_dataset(example_seeds, **carry_dataset)
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="carry.csv",
        **carry_dataset,
        example_questions=carry_samples["questions"],
        example_answers=carry_samples["answers"]
    )

    concatenate_dataset = {
        "instruction": "Concatenate the numbers.",
        "questions": [f"The result of {x} & {y} is what?" for x in range(10) for y in range(10)]
        + [
            f"The result of {x} & {y} & {z} is what?"
            for x in range(10)
            for y in range(10)
            for z in range(10)
        ],
        "answers": [f"{x}{y}" for x in range(10) for y in range(10)]
        + [f"{x}{y}{z}" for x in range(10) for y in range(10) for z in range(10)],
    }
    concatenate_samples = sample_dataset(example_seeds, **concatenate_dataset)
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="concatenate.csv",
        **concatenate_dataset,
        example_questions=concatenate_samples["questions"],
        example_answers=concatenate_samples["answers"]
    )

    multiply_1_digit_dataset = {
        "instruction": "Multiply two numbers.",
        "questions": [f"The result of {x} * {y} is what?" for x in range(10) for y in range(10)],
        "answers": [f"{x * y}" for x in range(10) for y in range(10)],
    }
    multiply_1_digit_samples = sample_dataset(example_seeds, **multiply_1_digit_dataset)
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-1-digit.csv",
        **multiply_1_digit_dataset,
        example_questions=multiply_1_digit_samples["questions"],
        example_answers=multiply_1_digit_samples["answers"]
    )

    sum_dataset = {
        "instruction": "Add two numbers.",
        "questions": [f"The result of {x} + {y} is what?" for x in range(100) for y in range(100)],
        "answers": [f"{x + y}" for x in range(100) for y in range(100)],
    }
    sum_samples = sample_dataset(example_seeds, **sum_dataset)
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="sum.csv",
        **sum_dataset,
        example_questions=sum_samples["questions"],
        example_answers=sum_samples["answers"]
    )

    # For multiply.csv, sample questions with 3+ digits because sample space is large
    samples_x = []
    samples_y = []
    sample = get_int_samples(0, 99, question_seed)
    samples_x.extend(sample[0])
    samples_y.extend(sample[1])
    sample = get_int_samples(0, 999, question_seed)
    samples_x.extend(sample[0])
    samples_y.extend(sample[1])
    sample = get_int_samples(0, 9999, question_seed)
    samples_x.extend(sample[0])
    samples_y.extend(sample[1])
    sample = get_int_samples(0, 99999, question_seed)
    samples_x.extend(sample[0])
    samples_y.extend(sample[1])
    # For multiply.csv, try giving examples of varying size
    # examples = []
    # min = 0
    # max = 9
    # for index in range(len(example_seeds)):
    #     examples.append(get_multiply_example(min, max, example_seeds[index]))
    #     max = int(str(max) + "9")

    multiply_dataset = {
        "instruction": "Multiply two numbers.",
        "questions": [f"The result of {x} * {y} is what?" for x in range(10) for y in range(10)]
        + [
            f"The result of {samples_x[index]} * {samples_y[index]} is what?" for index in range(len(samples_x))
        ],
        "answers": [f"{x * y}" for x in range(10) for y in range(10)]
        + [f"{samples_x[index] * samples_y[index]}" for index in range(len(samples_x))],
    }
    multiply_samples = sample_dataset(example_seeds, **multiply_dataset)
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply.csv",
        **multiply_dataset,
        example_questions=multiply_samples["questions"],
        example_answers=multiply_samples["answers"]
    )

    # 1: carry, 2: concatenate, 3: multiply-1-digit, 4: sum, 5: exp, 6: sub, 7: rev
    power_dataset = {
        "instruction": "Exponentiate the number.",
        "questions": [f"The result of {x}**{y} is what?" for x in range(10) for y in range(10)],
        "answers": [f"{x**y}" for x in range(10) for y in range(10)],
    }
    power_samples = sample_dataset(example_seeds, **power_dataset)

    subtract_dataset = {
        "instruction": "Subtract two numbers.",
        "questions": [f"The result of {x} - {y} is what?" for x in range(100) for y in range(100)],
        "answers": [f"{x - y}" for x in range(100) for y in range(100)],
    }
    subtract_samples = sample_dataset(example_seeds, **subtract_dataset)

    samples = get_str_samples(question_seed)
    reverse_dataset = {
        "instruction": "Reverse the string.",
        "questions": [f"Reverse of {sample} is what?" for sample in samples],
        "answers": [f"{sample[::-1]}" for sample in samples],
    }
    reverse_samples = sample_dataset(example_seeds, **reverse_dataset)
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-primed-1.csv",
        **multiply_dataset,
        example_questions=multiply_samples["questions"],
        example_answers=multiply_samples["answers"],
        priming_instruction=carry_samples["instruction"],
        priming_questions=carry_samples["questions"],
        priming_answers=carry_samples["answers"],
    )
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-primed-2.csv",
        **multiply_dataset,
        example_questions=multiply_samples["questions"],
        example_answers=multiply_samples["answers"],
        priming_instruction=concatenate_samples["instruction"],
        priming_questions=concatenate_samples["questions"],
        priming_answers=concatenate_samples["answers"],
    )
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-primed-3.csv",
        **multiply_dataset,
        example_questions=multiply_samples["questions"],
        example_answers=multiply_samples["answers"],
        priming_instruction=multiply_1_digit_samples["instruction"],
        priming_questions=multiply_1_digit_samples["questions"],
        priming_answers=multiply_1_digit_samples["answers"],
    )
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-primed-4.csv",
        **multiply_dataset,
        example_questions=multiply_samples["questions"],
        example_answers=multiply_samples["answers"],
        priming_instruction=sum_samples["instruction"],
        priming_questions=sum_samples["questions"],
        priming_answers=sum_samples["answers"],
    )
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-primed-5.csv",
        **multiply_dataset,
        example_questions=multiply_samples["questions"],
        example_answers=multiply_samples["answers"],
        priming_instruction=power_samples["instruction"],
        priming_questions=power_samples["questions"],
        priming_answers=power_samples["answers"],
    )
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-primed-6.csv",
        **multiply_dataset,
        example_questions=multiply_samples["questions"],
        example_answers=multiply_samples["answers"],
        priming_instruction=subtract_samples["instruction"],
        priming_questions=subtract_samples["questions"],
        priming_answers=subtract_samples["answers"],
    )
    
    write_csv(
        dataset_folder_path=dataset_folder_path,
        save_file="multiply-primed-7.csv",
        **multiply_dataset,
        example_questions=multiply_samples["questions"],
        example_answers=multiply_samples["answers"],
        priming_instruction=reverse_samples["instruction"],
        priming_questions=reverse_samples["questions"],
        priming_answers=reverse_samples["answers"],
    )


if __name__ == "__main__":
    dataset_path = f"../data/multiplication-v2/"
    create_csvs(dataset_path)
