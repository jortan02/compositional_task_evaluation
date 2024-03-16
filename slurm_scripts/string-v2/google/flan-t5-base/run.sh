sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 --output=./out/string-v2/%A/%a-uppercase.log ./slurm_scripts/run_full.sh ./data/string-v2/uppercase.csv ./results/string-v2/uppercase/google/flan-t5-base ./scripts/t5_cte.py google/flan-t5-base 1
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 --output=./out/string-v2/%A/%a-remove-first.log ./slurm_scripts/run_full.sh ./data/string-v2/remove-first.csv ./results/string-v2/remove-first/google/flan-t5-base ./scripts/t5_cte.py google/flan-t5-base 1
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 --output=./out/string-v2/%A/%a-concatenate.log ./slurm_scripts/run_full.sh ./data/string-v2/concatenate.csv ./results/string-v2/concatenate/google/flan-t5-base ./scripts/t5_cte.py google/flan-t5-base 1
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 --output=./out/string-v2/%A/%a-wlo.log ./slurm_scripts/run_full.sh ./data/string-v2/wlo.csv ./results/string-v2/wlo/google/flan-t5-base ./scripts/t5_cte.py google/flan-t5-base 1
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 --output=./out/string-v2/%A/%a-wlo-primed-1.log ./slurm_scripts/run_full.sh ./data/string-v2/wlo-primed-1.csv ./results/string-v2/wlo-primed-1/google/flan-t5-base ./scripts/t5_cte.py google/flan-t5-base 1
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 --output=./out/string-v2/%A/%a-wlo-primed-2.log ./slurm_scripts/run_full.sh ./data/string-v2/wlo-primed-2.csv ./results/string-v2/wlo-primed-2/google/flan-t5-base ./scripts/t5_cte.py google/flan-t5-base 1
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 --output=./out/string-v2/%A/%a-wlo-primed-3.log ./slurm_scripts/run_full.sh ./data/string-v2/wlo-primed-3.csv ./results/string-v2/wlo-primed-3/google/flan-t5-base ./scripts/t5_cte.py google/flan-t5-base 1
sbatch --gres=gpu:2 --mem=10GB --time=1:00:00 --output=./out/string-v2/%A/%a-wlo-primed-4.log ./slurm_scripts/run_full.sh ./data/string-v2/wlo-primed-4.csv ./results/string-v2/wlo-primed-4/google/flan-t5-base ./scripts/t5_cte.py google/flan-t5-base 1
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 --output=./out/string-v2/%A/%a-wlo-primed-5.log ./slurm_scripts/run_full.sh ./data/string-v2/wlo-primed-5.csv ./results/string-v2/wlo-primed-5/google/flan-t5-base ./scripts/t5_cte.py google/flan-t5-base 1
sbatch --gres=gpu:1 --mem=10GB --time=1:00:00 --output=./out/string-v2/%A/%a-wlo-primed-6.log ./slurm_scripts/run_full.sh ./data/string-v2/wlo-primed-6.csv ./results/string-v2/wlo-primed-6/google/flan-t5-base ./scripts/t5_cte.py google/flan-t5-base 1
