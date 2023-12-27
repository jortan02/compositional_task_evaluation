#!/bin/bash
# cd "$(dirname "$0")"

sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xl 1  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xl 2  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xl 3  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xl 4  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xl 5  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xl 6  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xl 7  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xl 8  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xl 9  100
sbatch --gres=gpu:2 --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xl 10 100

sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xl 1  25
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xl 2  25
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xl 3  25
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xl 4  25
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xl 5  25
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xl 6  25
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xl 7  25
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xl 8  25
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xl 9  25
sbatch --gres=gpu:2 --mem=10GB --time=0:30:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xl 10 25

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xl 1  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xl 2  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xl 3  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xl 4  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xl 5  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xl 6  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xl 7  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xl 8  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xl 9  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xl 10 20

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xl 1  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xl 2  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xl 3  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xl 4  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xl 5  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xl 6  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xl 7  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xl 8  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xl 9  20
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xl 10 20

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xl 1  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xl 2  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xl 3  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xl 4  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xl 5  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xl 6  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xl 7  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xl 8  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xl 9  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xl 10 30

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xl 1  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xl 2  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xl 3  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xl 4  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xl 5  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xl 6  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xl 7  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xl 8  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xl 9  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xl 10 30

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xl 1  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xl 2  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xl 3  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xl 4  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xl 5  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xl 6  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xl 7  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xl 8  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xl 9  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xl 10 30

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xl 1  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xl 2  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xl 3  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xl 4  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xl 5  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xl 6  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xl 7  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xl 8  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xl 9  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xl 10 30

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xl 1  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xl 2  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xl 3  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xl 4  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xl 5  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xl 6  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xl 7  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xl 8  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xl 9  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xl 10 30

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xl 1  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xl 2  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xl 3  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xl 4  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xl 5  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xl 6  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xl 7  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xl 8  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xl 9  30
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xl 10 30

sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xl 10 10