#!/bin/bash
# cd "$(dirname "$0")"

sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 1  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 2  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 3  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 4  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 5  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 6  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 7  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 8  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 9  10
sbatch --gres=gpu:2 --mem=10GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 10 10

sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 1  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 2  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 3  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 4  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 5  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 6  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 7  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 8  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 9  10
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 10 10

sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 1  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 2  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 3  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 4  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 5  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 6  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 7  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 8  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 9  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 10 10

sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 1  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 2  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 3  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 4  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 5  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 6  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 7  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 8  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 9  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 10 10

sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 1  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 2  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 3  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 4  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 5  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 6  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 7  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 8  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 9  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 10 10

sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 1  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 2  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 3  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 4  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 5  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 6  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 7  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 8  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 9  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 10 10

sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 1  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 2  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 3  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 4  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 5  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 6  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 7  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 8  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 9  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 10 10

sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 1  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 2  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 3  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 4  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 5  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 6  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 7  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 8  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 9  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 10 10

sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 1  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 2  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 3  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 4  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 5  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 6  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 7  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 8  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 9  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 10 10

sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 1  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 2  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 3  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 4  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 5  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 6  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 7  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 8  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 9  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 10 10

sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 1  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 2  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 3  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 4  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 5  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 6  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 7  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 8  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 9  10
sbatch --gres=gpu:2 --mem=10GB --time=7:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 10 10

sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 1  20
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 2  20
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 3  20
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 4  20
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 5  20
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 4  20
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 7  20
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 8  20
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 9  20
sbatch --gres=gpu:2 --mem=10GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-hf 10 20