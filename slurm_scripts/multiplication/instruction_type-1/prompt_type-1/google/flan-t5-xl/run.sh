#!/bin/bash
# cd "$(dirname "$0")"

sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xl 1  100
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xl 2  100
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xl 3  100
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xl 4  100
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xl 5  100
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xl 6  100
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xl 7  100
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xl 8  100
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xl 9  100
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xl 10 100

sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xl 1  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xl 2  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xl 3  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xl 4  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xl 5  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xl 6  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xl 7  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xl 8  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xl 9  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xl 10 10

sbatch --gres=gpu:2 --mem=40GB --time=0:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xl 1  25
sbatch --gres=gpu:2 --mem=40GB --time=0:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xl 2  25
sbatch --gres=gpu:2 --mem=40GB --time=0:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xl 3  25
sbatch --gres=gpu:2 --mem=40GB --time=0:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xl 4  25
sbatch --gres=gpu:2 --mem=40GB --time=0:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xl 5  25
sbatch --gres=gpu:2 --mem=40GB --time=0:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xl 6  25
sbatch --gres=gpu:2 --mem=40GB --time=0:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xl 7  25
sbatch --gres=gpu:2 --mem=40GB --time=0:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xl 8  25
sbatch --gres=gpu:2 --mem=40GB --time=0:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xl 9  25
sbatch --gres=gpu:2 --mem=40GB --time=0:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xl 10 25

sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xl 1  10
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xl 2  10
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xl 3  10
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xl 4  10
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xl 5  10
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xl 6  10
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xl 7  10
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xl 8  10
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xl 9  10
sbatch --gres=gpu:2 --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xl 10 10

sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xl 1  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xl 2  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xl 3  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xl 4  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xl 5  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xl 6  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xl 7  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xl 8  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xl 9  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xl 10 30

sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-xl 1  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-xl 2  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-xl 3  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-xl 4  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-xl 5  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-xl 6  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-xl 7  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-xl 8  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-xl 9  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-xl 10 30

sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-xl 1  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-xl 2  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-xl 3  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-xl 4  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-xl 5  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-xl 6  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-xl 7  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-xl 8  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-xl 9  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-xl 10 30

sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-xl 1  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-xl 2  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-xl 3  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-xl 4  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-xl 5  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-xl 6  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-xl 7  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-xl 8  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-xl 9  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-xl 10 30

sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh google/flan-t5-xl 1  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh google/flan-t5-xl 2  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh google/flan-t5-xl 3  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh google/flan-t5-xl 4  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh google/flan-t5-xl 5  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh google/flan-t5-xl 6  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh google/flan-t5-xl 7  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh google/flan-t5-xl 8  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh google/flan-t5-xl 9  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh google/flan-t5-xl 10 30

sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh google/flan-t5-xl 1  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh google/flan-t5-xl 2  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh google/flan-t5-xl 3  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh google/flan-t5-xl 4  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh google/flan-t5-xl 5  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh google/flan-t5-xl 6  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh google/flan-t5-xl 7  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh google/flan-t5-xl 8  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh google/flan-t5-xl 9  30
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh google/flan-t5-xl 10 30

sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xl 1  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xl 2  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xl 3  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xl 4  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xl 5  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xl 6  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xl 7  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xl 8  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xl 9  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xl 10 10