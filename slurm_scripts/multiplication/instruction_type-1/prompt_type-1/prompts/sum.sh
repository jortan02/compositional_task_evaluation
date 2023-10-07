#!/bin/bash
#SBATCH --requeue
#SBATCH --account soc-gpu-np
#SBATCH --partition soc-gpu-np
#SBATCH --ntasks-per-node=32
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --mail-user=jordan.tan@utah.edu
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH -o %j-sum-out

source ~/miniconda3/etc/profile.d/conda.sh
conda activate compositional

mkdir /scratch/general/vast/u1283221/huggingface_cache
export TRANSFORMERS_CACHE="/scratch/general/vast/u1283221/huggingface_cache"

task="sum"
instruction_type=1
prompt_type=1
module = %1

data_path="./data/multiplication/instruction_type-$instruction_type/prompt_type-$prompt_type/$task.csv"
results_path="./results/multiplication/instruction_type-$instruction_type/prompt_type-$prompt_type/$task/$module/"
experiment_count=10
batch_size=%2

python t5_cte.py $data_path $results_path $experiment_count $module $batch_size