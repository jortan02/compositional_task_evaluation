#!/bin/bash
#SBATCH --requeue
#SBATCH --account soc-gpu-np
#SBATCH --partition soc-gpu-np
#SBATCH --ntasks-per-node=32
#SBATCH --nodes=1
#SBATCH --gres=gpu:a100:1
#SBATCH --time=4:00:00
#SBATCH --mem=40GB
#SBATCH --mail-user=jordan.tan@utah.edu
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH -o t5_cte_out-%j

source ~/miniconda3/etc/profile.d/conda.sh
conda activate compositional

mkdir /scratch/general/vast/u1283221/huggingface_cache
export TRANSFORMERS_CACHE="/scratch/general/vast/u1283221/huggingface_cache"
python generate_datasets.py

# # google/flan-t5-small
# python t5_cte.py ./data/multiplication/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/flan-t5-small/ 10 google/flan-t5-small 1000
python t5_cte.py ./data/multiplication/carry.csv ./results/multiplication/carry/flan-t5-small/ 10 google/flan-t5-small 1000
# python t5_cte.py ./data/multiplication/sum.csv ./results/multiplication/sum/flan-t5-small/ 10 google/flan-t5-small 1000
# python t5_cte.py ./data/multiplication/multiply.csv ./results/multiplication/multiply/flan-t5-small/ 10 google/flan-t5-small 1000
# python t5_cte.py ./data/multiplication/concatenate.csv ./results/multiplication/concatenate/flan-t5-small/ 10 google/flan-t5-small 1000

# # google/flan-t5-base
# python t5_cte.py ./data/multiplication/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/flan-t5-base/ 10 google/flan-t5-base 1000
python t5_cte.py ./data/multiplication/carry.csv ./results/multiplication/carry/flan-t5-base/ 10 google/flan-t5-base 1000
# python t5_cte.py ./data/multiplication/sum.csv ./results/multiplication/sum/flan-t5-base/ 10 google/flan-t5-base 1000
# python t5_cte.py ./data/multiplication/multiply.csv ./results/multiplication/multiply/flan-t5-base/ 10 google/flan-t5-base 1000
# python t5_cte.py ./data/multiplication/concatenate.csv ./results/multiplication/concatenate/flan-t5-base/ 10 google/flan-t5-base 1000

# # google/flan-t5-large
# python t5_cte.py ./data/multiplication/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/flan-t5-large/ 10 google/flan-t5-large 1000
python t5_cte.py ./data/multiplication/carry.csv ./results/multiplication/carry/flan-t5-large/ 10 google/flan-t5-large 1000
# python t5_cte.py ./data/multiplication/sum.csv ./results/multiplication/sum/flan-t5-large/ 10 google/flan-t5-large 1000
# python t5_cte.py ./data/multiplication/multiply.csv ./results/multiplication/multiply/flan-t5-large/ 10 google/flan-t5-large 1000
# python t5_cte.py ./data/multiplication/concatenate.csv ./results/multiplication/concatenate/flan-t5-large/ 10 google/flan-t5-large 1000

# # google/flan-t5-xl
# python t5_cte.py ./data/multiplication/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/flan-t5-xl/ 10 google/flan-t5-xl 100
python t5_cte.py ./data/multiplication/carry.csv ./results/multiplication/carry/flan-t5-xl/ 10 google/flan-t5-xl 100
# python t5_cte.py ./data/multiplication/sum.csv ./results/multiplication/sum/flan-t5-xl/ 10 google/flan-t5-xl 100
# python t5_cte.py ./data/multiplication/multiply.csv ./results/multiplication/multiply/flan-t5-xl/ 10 google/flan-t5-xl 100
# python t5_cte.py ./data/multiplication/concatenate.csv ./results/multiplication/concatenate/flan-t5-xl/ 10 google/flan-t5-xl 100

# # google/flan-t5-xxl
# python t5_cte.py ./data/multiplication/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/flan-t5-xxl/ 10 google/flan-t5-xxl 100
python t5_cte.py ./data/multiplication/carry.csv ./results/multiplication/carry/flan-t5-xxl/ 10 google/flan-t5-xxl 100
# python t5_cte.py ./data/multiplication/sum.csv ./results/multiplication/sum/flan-t5-xxl/ 10 google/flan-t5-xxl 100
# python t5_cte.py ./data/multiplication/multiply.csv ./results/multiplication/multiply/flan-t5-xxl/ 10 google/flan-t5-xxl 10
# python t5_cte.py ./data/multiplication/concatenate.csv ./results/multiplication/concatenate/flan-t5-xxl/ 10 google/flan-t5-xxl 100