#!/bin/bash
#SBATCH --requeue
#SBATCH --account soc-gpu-np
#SBATCH --partition soc-gpu-np
#SBATCH --mail-user=jordan.tan@utah.edu
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH -o ./out/%j-summary

source ~/miniconda3/etc/profile.d/conda.sh
conda activate compositional

python ./summary.py