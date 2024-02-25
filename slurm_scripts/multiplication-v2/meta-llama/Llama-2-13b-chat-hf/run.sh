sbatch --gres=gpu:a100:2 --mem=10GB --time=1:00:00 --output=./out/multiplication-v2/%A/%a-carry.log ./slurm_scripts/run_sections.sh ./data/multiplication-v2/carry ./results/multiplication-v2/carry/meta-llama/Llama-2-13b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-13b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=1:00:00 --output=./out/multiplication-v2/%A/%a-concatenate.log ./slurm_scripts/run_sections.sh ./data/multiplication-v2/concatenate ./results/multiplication-v2/concatenate/meta-llama/Llama-2-13b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-13b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=1:00:00 --output=./out/multiplication-v2/%A/%a-multiply-1-digit.log ./slurm_scripts/run_sections.sh ./data/multiplication-v2/multiply-1-digit ./results/multiplication-v2/multiply-1-digit/meta-llama/Llama-2-13b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-13b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=1:00:00 --output=./out/multiplication-v2/%A/%a-multiply.log ./slurm_scripts/run_sections.sh ./data/multiplication-v2/multiply ./results/multiplication-v2/multiply/meta-llama/Llama-2-13b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-13b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=1:00:00 --output=./out/multiplication-v2/%A/%a-multiply-primed-1.log ./slurm_scripts/run_sections.sh ./data/multiplication-v2/multiply-primed-1 ./results/multiplication-v2/multiply-primed-1/meta-llama/Llama-2-13b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-13b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=1:00:00 --output=./out/multiplication-v2/%A/%a-multiply-primed-2.log ./slurm_scripts/run_sections.sh ./data/multiplication-v2/multiply-primed-2 ./results/multiplication-v2/multiply-primed-2/meta-llama/Llama-2-13b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-13b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=1:00:00 --output=./out/multiplication-v2/%A/%a-multiply-primed-3.log ./slurm_scripts/run_sections.sh ./data/multiplication-v2/multiply-primed-3 ./results/multiplication-v2/multiply-primed-3/meta-llama/Llama-2-13b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-13b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=1:00:00 --output=./out/multiplication-v2/%A/%a-multiply-primed-4.log ./slurm_scripts/run_sections.sh ./data/multiplication-v2/multiply-primed-4 ./results/multiplication-v2/multiply-primed-4/meta-llama/Llama-2-13b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-13b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=1:00:00 --output=./out/multiplication-v2/%A/%a-multiply-primed-5.log ./slurm_scripts/run_sections.sh ./data/multiplication-v2/multiply-primed-5 ./results/multiplication-v2/multiply-primed-5/meta-llama/Llama-2-13b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-13b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=1:00:00 --output=./out/multiplication-v2/%A/%a-multiply-primed-6.log ./slurm_scripts/run_sections.sh ./data/multiplication-v2/multiply-primed-6 ./results/multiplication-v2/multiply-primed-6/meta-llama/Llama-2-13b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-13b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=1:00:00 --output=./out/multiplication-v2/%A/%a-multiply-primed-7.log ./slurm_scripts/run_sections.sh ./data/multiplication-v2/multiply-primed-7 ./results/multiplication-v2/multiply-primed-7/meta-llama/Llama-2-13b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-13b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=1:00:00 --output=./out/multiplication-v2/%A/%a-sum.log ./slurm_scripts/run_sections.sh ./data/multiplication-v2/sum ./results/multiplication-v2/sum/meta-llama/Llama-2-13b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-13b-chat-hf 10
