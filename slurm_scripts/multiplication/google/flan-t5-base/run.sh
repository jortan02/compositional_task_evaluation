#!/bin/bash
# cd "$(dirname "$0")"

sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-base 1  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-base 2  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-base 3  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-base 4  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-base 5  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-base 6  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-base 7  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-base 8  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-base 9  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-base 10 100

sbatch --gres=gpu:2 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-base 1  10
sbatch --gres=gpu:2 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-base 2  10
sbatch --gres=gpu:2 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-base 3  10
sbatch --gres=gpu:2 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-base 4  10
sbatch --gres=gpu:2 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-base 5  10
sbatch --gres=gpu:2 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-base 6  10
sbatch --gres=gpu:2 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-base 7  10
sbatch --gres=gpu:2 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-base 8  10
sbatch --gres=gpu:2 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-base 9  10
sbatch --gres=gpu:2 --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-base 10 10

sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-base 1  10
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-base 2  10
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-base 3  10
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-base 4  10
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-base 5  10
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-base 6  10
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-base 7  10
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-base 8  10
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-base 9  10
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-base 10 10

sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-base 1  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-base 2  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-base 3  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-base 4  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-base 5  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-base 6  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-base 7  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-base 8  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-base 9  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-base 10 10

sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-base 1  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-base 2  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-base 3  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-base 4  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-base 5  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-base 6  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-base 7  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-base 8  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-base 9  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-base 10 50

sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-base 1  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-base 2  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-base 3  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-base 4  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-base 5  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-base 6  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-base 7  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-base 8  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-base 9  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-base 10 50

sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-base 1  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-base 2  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-base 3  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-base 4  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-base 5  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-base 6  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-base 7  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-base 8  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-base 9  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-base 10 50

sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-base 1  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-base 2  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-base 3  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-base 4  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-base 5  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-base 6  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-base 7  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-base 8  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-base 9  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-base 10 50

sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-base 1  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-base 2  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-base 3  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-base 4  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-base 5  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-base 6  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-base 7  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-base 8  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-base 9  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-base 10 50

sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-base 1  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-base 2  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-base 3  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-base 4  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-base 5  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-base 6  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-base 7  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-base 8  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-base 9  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-base 10 50

sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-base 1  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-base 2  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-base 3  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-base 4  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-base 5  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-base 6  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-base 7  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-base 8  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-base 9  50
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-base 10 50

sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-base 1  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-base 2  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-base 3  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-base 4  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-base 5  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-base 6  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-base 7  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-base 8  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-base 9  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-base 10 10