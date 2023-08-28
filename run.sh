#!/bin/bash
#SBATCH --account soc-gpu-np
#SBATCH --partition soc-gpu-np
#SBATCH --ntasks-per-node=32
#SBATCH --nodes=1
#SBATCH --gres=gpu:a100:1
#SBATCH --time=1:00:00
#SBATCH --mem=1GB
#SBATCH --mail-user=jordan.tan@utah.edu
#SBATCH --mail-type=FAIL,END
#SBATCH -o dummy_out-%j

source ~/miniconda3/etc/profile.d/conda.sh
conda activate compositional

mkdir /scratch/general/vast/u1283221/huggingface_cache
export TRANSFORMER_CACHE="/scratch/general/vast/u1283221/huggingface_cache"

echo $TRANSFORMER_CACHE

TRANSFORMER_CACHE="/scratch/general/vast/u1283221/huggingface_cache" python dummy.py