sbatch --gres=gpu:a100:2 --mem=10GB --time=6:00:00 --output=./out/string/%A/%a-uppercase.log ./slurm_scripts/run_full.sh ./data/string/uppercase.csv ./results/string/uppercase/meta-llama/Llama-2-7b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-7b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=6:00:00 --output=./out/string/%A/%a-remove-first.log ./slurm_scripts/run_full.sh ./data/string/remove-first.csv ./results/string/remove-first/meta-llama/Llama-2-7b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-7b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=6:00:00 --output=./out/string/%A/%a-concatenate.log ./slurm_scripts/run_full.sh ./data/string/concatenate.csv ./results/string/concatenate/meta-llama/Llama-2-7b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-7b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=6:00:00 --output=./out/string/%A/%a-wlo.log ./slurm_scripts/run_full.sh ./data/string/wlo.csv ./results/string/wlo/meta-llama/Llama-2-7b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-7b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=6:00:00 --output=./out/string/%A/%a-wlo-primed-1.log ./slurm_scripts/run_full.sh ./data/string/wlo-primed-1.csv ./results/string/wlo-primed-1/meta-llama/Llama-2-7b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-7b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=6:00:00 --output=./out/string/%A/%a-wlo-primed-2.log ./slurm_scripts/run_full.sh ./data/string/wlo-primed-2.csv ./results/string/wlo-primed-2/meta-llama/Llama-2-7b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-7b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=6:00:00 --output=./out/string/%A/%a-wlo-primed-3.log ./slurm_scripts/run_full.sh ./data/string/wlo-primed-3.csv ./results/string/wlo-primed-3/meta-llama/Llama-2-7b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-7b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=6:00:00 --output=./out/string/%A/%a-wlo-primed-4.log ./slurm_scripts/run_full.sh ./data/string/wlo-primed-4.csv ./results/string/wlo-primed-4/meta-llama/Llama-2-7b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-7b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=6:00:00 --output=./out/string/%A/%a-wlo-primed-5.log ./slurm_scripts/run_full.sh ./data/string/wlo-primed-5.csv ./results/string/wlo-primed-5/meta-llama/Llama-2-7b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-7b-chat-hf 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=6:00:00 --output=./out/string/%A/%a-wlo-primed-6.log ./slurm_scripts/run_full.sh ./data/string/wlo-primed-6.csv ./results/string/wlo-primed-6/meta-llama/Llama-2-7b-chat-hf ./scripts/llama_2_cte.py meta-llama/Llama-2-7b-chat-hf 10