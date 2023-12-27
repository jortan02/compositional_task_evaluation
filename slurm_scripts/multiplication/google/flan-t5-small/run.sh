#!/bin/bash
# cd "$(dirname "$0")"

sbatch --gres=gpu:1 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-small 1  50
sbatch --gres=gpu:1 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-small 2  50
sbatch --gres=gpu:1 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-small 3  50
sbatch --gres=gpu:1 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-small 4  50
sbatch --gres=gpu:1 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-small 5  50
sbatch --gres=gpu:1 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-small 6  50
sbatch --gres=gpu:1 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-small 7  50
sbatch --gres=gpu:1 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-small 8  50
sbatch --gres=gpu:1 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-small 9  50
sbatch --gres=gpu:1 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-small 10 50

sbatch --gres=gpu:1 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-small 1  50
sbatch --gres=gpu:1 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-small 2  50
sbatch --gres=gpu:1 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-small 3  50
sbatch --gres=gpu:1 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-small 4  50
sbatch --gres=gpu:1 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-small 5  50
sbatch --gres=gpu:1 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-small 6  50
sbatch --gres=gpu:1 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-small 7  50
sbatch --gres=gpu:1 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-small 8  50
sbatch --gres=gpu:1 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-small 9  50
sbatch --gres=gpu:1 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-small 10 50

sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-small 1  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-small 2  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-small 3  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-small 4  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-small 5  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-small 6  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-small 7  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-small 8  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-small 9  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-small 10 50

sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-small 1  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-small 2  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-small 3  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-small 4  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-small 5  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-small 6  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-small 7  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-small 8  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-small 9  50
sbatch --gres=gpu:1 --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-small 10 50

sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-small 1  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-small 2  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-small 3  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-small 4  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-small 5  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-small 6  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-small 7  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-small 8  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-small 9  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-small 10 50

sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-small 1  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-small 2  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-small 3  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-small 4  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-small 5  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-small 6  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-small 7  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-small 8  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-small 9  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-small 10 50

sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-small 1  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-small 2  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-small 3  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-small 4  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-small 5  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-small 6  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-small 7  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-small 8  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-small 9  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-small 10 50

sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-small 1  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-small 2  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-small 3  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-small 4  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-small 5  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-small 6  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-small 7  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-small 8  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-small 9  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-small 10 50

sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-small 1  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-small 2  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-small 3  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-small 4  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-small 5  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-small 6  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-small 7  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-small 8  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-small 9  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-small 10 50

sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-small 1  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-small 2  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-small 3  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-small 4  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-small 5  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-small 6  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-small 7  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-small 8  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-small 9  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-small 10 50

sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-small 1  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-small 2  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-small 3  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-small 4  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-small 5  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-small 6  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-small 7  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-small 8  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-small 9  50
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-small 10 50

sbatch --gres=gpu:1 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-small 1  50
sbatch --gres=gpu:1 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-small 2  50
sbatch --gres=gpu:1 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-small 3  50
sbatch --gres=gpu:1 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-small 4  50
sbatch --gres=gpu:1 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-small 5  50
sbatch --gres=gpu:1 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-small 6  50
sbatch --gres=gpu:1 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-small 7  50
sbatch --gres=gpu:1 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-small 8  50
sbatch --gres=gpu:1 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-small 9  50
sbatch --gres=gpu:1 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-small 10 50