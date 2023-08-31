#!/bin/bash
#SBATCH --requeue
#SBATCH --account soc-gpu-np
#SBATCH --partition soc-gpu-np
#SBATCH --ntasks-per-node=32
#SBATCH --nodes=1
#SBATCH --gres=gpu:a100:1
#SBATCH --time=2:00:00
#SBATCH --mem=30GB
#SBATCH --mail-user=jordan.tan@utah.edu
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH -o compositional_task_evaluation_out-%j

source ~/miniconda3/etc/profile.d/conda.sh
conda activate compositional

mkdir /scratch/general/vast/u1283221/huggingface_cache
export TRANSFORMERS_CACHE="/scratch/general/vast/u1283221/huggingface_cache"
python generate_datasets.py

# # flan-t5-small
# python t5_cte.py ./data/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/flan-t5-small_multiply_1_digit.csv google/flan-t5-small
# python t5_cte.py ./data/carry.csv ./results/multiplication/carry/flan-t5-small_carry.csv google/flan-t5-small
# python t5_cte.py ./data/sum.csv ./results/multiplication/sum/flan-t5-small_sum.csv google/flan-t5-small
# python t5_cte.py ./data/multiply.csv ./results/multiplication/multiply/flan-t5-small_multiply.csv google/flan-t5-small
# python t5_cte.py ./data/concatenate.csv ./results/multiplication/concatenate/flan-t5-small_concatenate.csv google/flan-t5-small

# # flan-t5-base
# python t5_cte.py ./data/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/flan-t5-base_multiply_1_digit.csv google/flan-t5-base
# python t5_cte.py ./data/carry.csv ./results/multiplication/carry/flan-t5-base_carry.csv google/flan-t5-base
# python t5_cte.py ./data/sum.csv ./results/multiplication/sum/flan-t5-base_sum.csv google/flan-t5-base
# python t5_cte.py ./data/multiply.csv ./results/multiplication/multiply/flan-t5-base_multiply.csv google/flan-t5-base
# python t5_cte.py ./data/concatenate.csv ./results/multiplication/concatenate/flan-t5-base_concatenate.csv google/flan-t5-base

# # flan-t5-large
# python t5_cte.py ./data/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/flan-t5-large_multiply_1_digit.csv google/flan-t5-large
# python t5_cte.py ./data/carry.csv ./results/multiplication/carry/flan-t5-large_carry.csv google/flan-t5-large
# python t5_cte.py ./data/sum.csv ./results/multiplication/sum/flan-t5-large_sum.csv google/flan-t5-large
# python t5_cte.py ./data/multiply.csv ./results/multiplication/multiply/flan-t5-large_multiply.csv google/flan-t5-large
# python t5_cte.py ./data/concatenate.csv ./results/multiplication/concatenate/flan-t5-large_concatenate.csv google/flan-t5-large

# # flan-t5-xl
# python t5_cte.py ./data/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/flan-t5-xl_multiply_1_digit.csv google/flan-t5-xl
# python t5_cte.py ./data/carry.csv ./results/multiplication/carry/flan-t5-xl_carry.csv google/flan-t5-xl
# python t5_cte.py ./data/sum.csv ./results/multiplication/sum/flan-t5-xl_sum.csv google/flan-t5-xl
# python t5_cte.py ./data/multiply.csv ./results/multiplication/multiply/flan-t5-xl_multiply.csv google/flan-t5-xl
# python t5_cte.py ./data/concatenate.csv ./results/multiplication/concatenate/flan-t5-xl_concatenate.csv google/flan-t5-xl

# flan-t5-xl
python t5_cte.py ./data/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/flan-t5-xxl_multiply_1_digit.csv google/flan-t5-xxl
python t5_cte.py ./data/carry.csv ./results/multiplication/carry/flan-t5-xxl_carry.csv google/flan-t5-xxl
python t5_cte.py ./data/sum.csv ./results/multiplication/sum/flan-t5-xxl_sum.csv google/flan-t5-xxl
python t5_cte.py ./data/multiply.csv ./results/multiplication/multiply/flan-t5-xxl_multiply.csv google/flan-t5-xxl
python t5_cte.py ./data/concatenate.csv ./results/multiplication/concatenate/flan-t5-xxl_concatenate.csv google/flan-t5-xxl