#!/bin/bash
# cd "$(dirname "$0")"

sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-small 1  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-small 2  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-small 3  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-small 4  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-small 5  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-small 6  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-small 7  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-small 8  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-small 9  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-small 10 100

sbatch --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-small 1  100
sbatch --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-small 2  100
sbatch --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-small 3  100
sbatch --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-small 4  100
sbatch --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-small 5  100
sbatch --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-small 6  100
sbatch --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-small 7  100
sbatch --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-small 8  100
sbatch --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-small 9  100
sbatch --mem=10GB --time=0:15:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-small 10 100

sbatch --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-small 1  100
sbatch --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-small 2  100
sbatch --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-small 3  100
sbatch --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-small 4  100
sbatch --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-small 5  100
sbatch --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-small 6  100
sbatch --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-small 7  100
sbatch --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-small 8  100
sbatch --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-small 9  100
sbatch --mem=10GB --time=2:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-small 10 100

sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-small 1  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-small 2  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-small 3  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-small 4  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-small 5  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-small 6  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-small 7  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-small 8  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-small 9  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-small 10 100

sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-small 1  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-small 2  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-small 3  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-small 4  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-small 5  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-small 6  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-small 7  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-small 8  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-small 9  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-small 10 100

sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-small 1  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-small 2  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-small 3  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-small 4  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-small 5  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-small 6  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-small 7  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-small 8  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-small 9  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-small 10 100

sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-small 1  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-small 2  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-small 3  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-small 4  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-small 5  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-small 6  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-small 7  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-small 8  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-small 9  100
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-small 10 100

sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-small 1  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-small 2  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-small 3  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-small 4  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-small 5  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-small 6  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-small 7  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-small 8  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-small 9  100
sbatch --mem=10GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-small 10 100

sbatch --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-small 1  100
sbatch --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-small 2  100
sbatch --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-small 3  100
sbatch --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-small 4  100
sbatch --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-small 5  100
sbatch --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-small 6  100
sbatch --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-small 7  100
sbatch --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-small 8  100
sbatch --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-small 9  100
sbatch --mem=10GB --time=1:30:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-small 10 100