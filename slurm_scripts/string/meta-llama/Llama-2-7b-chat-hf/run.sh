#!/bin/bash
# cd "$(dirname "$0")"

sbatch --gres=gpu:2 --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 1  10
sbatch --gres=gpu:2 --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 2  10
sbatch --gres=gpu:2 --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 3  10
sbatch --gres=gpu:2 --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 4  10
sbatch --gres=gpu:2 --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 5  10
sbatch --gres=gpu:2 --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 6  10
sbatch --gres=gpu:2 --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 7  10
sbatch --gres=gpu:2 --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 8  10
sbatch --gres=gpu:2 --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 9  10
sbatch --gres=gpu:2 --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/carry.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 10 10

sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 1  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 2  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 3  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 4  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 5  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 6  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 7  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 8  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 9  10
sbatch --gres=gpu:2 --mem=20GB --time=1:00:00 ./slurm_scripts/multiplication/prompts/concatenate.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 10 10

sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 1  10
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 2  10
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 3  10
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 4  10
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 5  10
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 6  10
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 7  10
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 8  10
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 9  10
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply-1-digit.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 10 10

sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 1  50
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 2  50
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 3  50
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 4  50
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 5  50
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 6  50
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 7  50
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 8  50
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 9  50
sbatch --gres=gpu:2 --mem=20GB --time=7:00:00 ./slurm_scripts/multiplication/prompts/multiply.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 10 50

sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 1  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 2  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 3  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 4  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 5  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 6  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 7  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 8  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 9  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-1.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 10 25

sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 1  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 2  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 3  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 4  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 5  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 6  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 7  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 8  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 9  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-2.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 10 25

sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 1  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 2  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 3  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 4  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 5  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 6  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 7  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 8  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 9  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-3.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 10 25

sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 1  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 2  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 3  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 4  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 5  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 6  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 7  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 8  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 9  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-4.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 10 25

sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 1  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 2  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 3  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 4  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 5  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 6  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 7  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 8  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 9  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-5.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 10 25

sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 1  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 2  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 3  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 4  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 5  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 6  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 7  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 8  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 9  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-6.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 10 25

sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 1  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 2  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 3  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 4  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 5  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 6  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 7  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 8  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 9  25
sbatch --gres=gpu:2 --mem=20GB --time=9:00:00 ./slurm_scripts/multiplication/prompts/multiply-primed-7.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 10 25

sbatch --gres=gpu:2 --mem=20GB --time=6:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 1  20
sbatch --gres=gpu:2 --mem=20GB --time=6:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 2  20
sbatch --gres=gpu:2 --mem=20GB --time=6:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 3  20
sbatch --gres=gpu:2 --mem=20GB --time=6:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 4  20
sbatch --gres=gpu:2 --mem=20GB --time=6:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 5  20
sbatch --gres=gpu:2 --mem=20GB --time=6:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 4  20
sbatch --gres=gpu:2 --mem=20GB --time=6:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 7  20
sbatch --gres=gpu:2 --mem=20GB --time=6:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 8  20
sbatch --gres=gpu:2 --mem=20GB --time=6:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 9  20
sbatch --gres=gpu:2 --mem=20GB --time=6:00:00 ./slurm_scripts/multiplication/prompts/sum.sh ./scripts/llama2_cte.py meta-llama/Llama-2-7b-chat-hf 10 20