#!/bin/bash
# cd "$(dirname "$0")"

sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-large 1  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-large 2  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-large 3  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-large 4  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-large 5  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-large 6  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-large 7  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-large 8  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-large 9  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-large 10 100

sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-large 1  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-large 2  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-large 3  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-large 4  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-large 5  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-large 6  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-large 7  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-large 8  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-large 9  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-large 10 10

sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-large 1  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-large 2  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-large 3  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-large 4  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-large 5  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-large 6  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-large 7  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-large 8  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-large 9  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-large 10 10

sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-large 1  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-large 2  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-large 3  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-large 4  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-large 5  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-large 6  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-large 7  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-large 8  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-large 9  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-large 10 50

sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-large 1  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-large 2  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-large 3  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-large 4  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-large 5  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-large 6  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-large 7  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-large 8  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-large 9  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh google/flan-t5-large 10 50

sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-large 1  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-large 2  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-large 3  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-large 4  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-large 5  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-large 6  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-large 7  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-large 8  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-large 9  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh google/flan-t5-large 10 50

sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-large 1  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-large 2  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-large 3  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-large 4  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-large 5  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-large 6  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-large 7  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-large 8  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-large 9  50
sbatch --gres=gpu:2 --mem=20GB --time=3:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh google/flan-t5-large 10 50

sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-large 1  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-large 2  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-large 3  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-large 4  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-large 5  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-large 6  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-large 7  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-large 8  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-large 9  100
sbatch --mem=20GB --time=0:05:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-large 10 100

sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-large 1  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-large 2  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-large 3  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-large 4  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-large 5  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-large 6  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-large 7  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-large 8  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-large 9  10
sbatch --mem=20GB --time=0:45:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-large 10 10
