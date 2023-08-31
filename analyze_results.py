import pandas as pd
import re
import sys

def _compare_first_number(expected, actual):
    numbers_in_expected = re.findall(r"(?<!\d)([-]?\d*\.?\d+)", str(expected))
    if len(numbers_in_expected) == 0:
        return False
    prediction = numbers_in_expected[0]
    return float(prediction) == float(actual)

def _compare_all_numbers(expected, actual):
    numbers_in_expected = re.findall(r"(?<!\d)([-]?\d*\.?\d+)", str(expected))
    if len(numbers_in_expected) == 0:
        return False
    return float(actual) in [float(number) for number in numbers_in_expected]

def analyze_results(file, analysis_type):
    match(analysis_type):
        case "first":
            analysis_function = _compare_first_number
        case "any":
            analysis_function = _compare_all_numbers
        case _:
            raise NotImplementedError("analysis_type not found.")
        
    results_pd = pd.read_csv(file)
    result = [analysis_function(expected, actual) for actual, expected in zip(results_pd["answer"], results_pd["prediction"])]
    accuracy = result.count(True) / len(result)
    return accuracy