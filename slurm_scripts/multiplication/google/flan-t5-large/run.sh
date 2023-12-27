#!/bin/bash
# cd "$(dirname "$0")"

sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-large 1  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-large 2  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-large 3  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-large 4  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-large 5  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-large 6  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-large 7  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-large 8  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-large 9  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-large 10 100

sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-large 1  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-large 2  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-large 3  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-large 4  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-large 5  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-large 6  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-large 7  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-large 8  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-large 9  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-large 10 10

sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-large 1  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-large 2  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-large 3  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-large 4  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-large 5  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-large 6  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-large 7  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-large 8  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-large 9  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-large 10 10

sbatch --gres=gpu:2 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-large 1  10
sbatch --gres=gpu:2 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-large 2  10
sbatch --gres=gpu:2 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-large 3  10
sbatch --gres=gpu:2 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-large 4  10
sbatch --gres=gpu:2 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-large 5  10
sbatch --gres=gpu:2 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-large 6  10
sbatch --gres=gpu:2 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-large 7  10
sbatch --gres=gpu:2 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-large 8  10
sbatch --gres=gpu:2 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-large 9  10
sbatch --gres=gpu:2 --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-large 10 10

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-large 1  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-large 2  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-large 3  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-large 4  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-large 5  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-large 6  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-large 7  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-large 8  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-large 9  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-large 10 20

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-large 1  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-large 2  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-large 3  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-large 4  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-large 5  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-large 6  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-large 7  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-large 8  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-large 9  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-large 10 20

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-large 1  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-large 2  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-large 3  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-large 4  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-large 5  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-large 6  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-large 7  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-large 8  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-large 9  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-large 10 20

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-large 1  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-large 2  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-large 3  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-large 4  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-large 5  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-large 6  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-large 7  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-large 8  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-large 9  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-large 10 20

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-large 1  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-large 2  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-large 3  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-large 4  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-large 5  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-large 6  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-large 7  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-large 8  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-large 9  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-large 10 20

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-large 1  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-large 2  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-large 3  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-large 4  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-large 5  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-large 6  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-large 7  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-large 8  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-large 9  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-large 10 20

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-large 1  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-large 2  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-large 3  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-large 4  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-large 5  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-large 6  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-large 7  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-large 8  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-large 9  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-large 10 20

sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-large 1  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-large 2  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-large 3  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-large 4  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-large 5  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-large 6  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-large 7  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-large 8  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-large 9  10
sbatch --gres=gpu:2 --mem=10GB --time=0:45:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-large 10 10
