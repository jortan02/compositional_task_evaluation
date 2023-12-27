#!/bin/bash
#SBATCH --requeue
#SBATCH --account soc-gpu-np
#SBATCH --partition soc-gpu-np
#SBATCH --mail-user=jordan.tan@utah.edu
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH -o ./out/%j-multiply-1-digit-out

source ~/miniconda3/etc/profile.d/conda.sh
conda activate compositional

mkdir /scratch/general/vast/u1283221/huggingface_cache
export TRANSFORMERS_CACHE="/scratch/general/vast/u1283221/huggingface_cache"

task="multiply-1-digit"

script=$1
module=$2
experiment_number=$3
batch_size=$4

input_file_path="./data/multiplication/$task.csv"
output_file_path="./results/multiplication/$task/$module/experiment-$experiment_number.csv"

CUDA_LAUNCH_BLOCKING=1 python $script $input_file_path $output_file_path $module $batch_size