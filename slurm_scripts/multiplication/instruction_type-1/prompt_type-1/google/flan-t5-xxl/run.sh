#!/bin/bash
# cd "$(dirname "$0")"

sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=4:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  100
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  100
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  100
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  100
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  100
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  100
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  100
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  100
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  100
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 100