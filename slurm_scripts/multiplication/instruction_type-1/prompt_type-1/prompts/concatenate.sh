#!/bin/bash
#SBATCH --requeue
#SBATCH --account soc-gpu-np
#SBATCH --partition soc-gpu-np
#SBATCH --mail-user=jordan.tan@utah.edu
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH -o ./out/%j-concatenate-out

source ~/miniconda3/etc/profile.d/conda.sh
conda activate compositional

mkdir /scratch/general/vast/u1283221/huggingface_cache
export TRANSFORMERS_CACHE="/scratch/general/vast/u1283221/huggingface_cache"

task="concatenate"
instruction_type=1
prompt_type=1
module=$1
experiment_number=$2
batch_size=$3

input_file_path="./data/multiplication/instruction_type-$instruction_type/prompt_type-$prompt_type/$task.csv"
output_file_path="./results/multiplication/instruction_type-$instruction_type/prompt_type-$prompt_type/$task/$module/experiment-$experiment_number.csv"

python ./scripts/t5_cte.py $input_file_path $output_file_path $module $batch_size