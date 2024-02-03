#!/bin/bash
#SBATCH --array=0-49
#SBATCH --requeue
#SBATCH --account soc-gpu-np
#SBATCH --partition soc-gpu-np
#SBATCH --mail-user=jordan.tan@utah.edu
#SBATCH --mail-type=FAIL,BEGIN,END
source ~/miniconda3/etc/profile.d/conda.sh
conda activate compositional

mkdir /scratch/general/vast/u1283221/huggingface_cache
export TRANSFORMERS_CACHE="/scratch/general/vast/u1283221/huggingface_cache"

data_path=$1
script=$2
module=$3

batch_size=$4

experiment_number=$((SLURM_ARRAY_TASK_ID/10+1))
section_number=$((SLURM_ARRAY_TASK_ID%10+1))
input_file_path="$1/section-$section_number.csv"
output_file_path="$2/experiment-$experiment_number/section-$section_number.csv"
script=$3
module=$4
batch_size=$5

CUDA_LAUNCH_BLOCKING=1 python $script $input_file_path $output_file_path $module $batch_size