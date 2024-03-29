sbatch --gres=gpu:2 --mem=10GB --time=2:00:00 --output=./out/string/%A/%a-uppercase.log ./slurm_scripts/run_full.sh ./data/string/uppercase.csv ./results/string/uppercase/google/flan-t5-small ./scripts/t5_cte.py google/flan-t5-small 10
sbatch --gres=gpu:2 --mem=10GB --time=2:00:00 --output=./out/string/%A/%a-remove-first.log ./slurm_scripts/run_full.sh ./data/string/remove-first.csv ./results/string/remove-first/google/flan-t5-small ./scripts/t5_cte.py google/flan-t5-small 10
sbatch --gres=gpu:2 --mem=10GB --time=2:00:00 --output=./out/string/%A/%a-concatenate.log ./slurm_scripts/run_full.sh ./data/string/concatenate.csv ./results/string/concatenate/google/flan-t5-small ./scripts/t5_cte.py google/flan-t5-small 10
sbatch --gres=gpu:2 --mem=10GB --time=2:00:00 --output=./out/string/%A/%a-wlo.log ./slurm_scripts/run_full.sh ./data/string/wlo.csv ./results/string/wlo/google/flan-t5-small ./scripts/t5_cte.py google/flan-t5-small 10
sbatch --gres=gpu:2 --mem=10GB --time=2:00:00 --output=./out/string/%A/%a-wlo-primed-1.log ./slurm_scripts/run_full.sh ./data/string/wlo-primed-1.csv ./results/string/wlo-primed-1/google/flan-t5-small ./scripts/t5_cte.py google/flan-t5-small 10
sbatch --gres=gpu:2 --mem=10GB --time=2:00:00 --output=./out/string/%A/%a-wlo-primed-2.log ./slurm_scripts/run_full.sh ./data/string/wlo-primed-2.csv ./results/string/wlo-primed-2/google/flan-t5-small ./scripts/t5_cte.py google/flan-t5-small 10
sbatch --gres=gpu:2 --mem=10GB --time=2:00:00 --output=./out/string/%A/%a-wlo-primed-3.log ./slurm_scripts/run_full.sh ./data/string/wlo-primed-3.csv ./results/string/wlo-primed-3/google/flan-t5-small ./scripts/t5_cte.py google/flan-t5-small 10
sbatch --gres=gpu:2 --mem=10GB --time=2:00:00 --output=./out/string/%A/%a-wlo-primed-4.log ./slurm_scripts/run_full.sh ./data/string/wlo-primed-4.csv ./results/string/wlo-primed-4/google/flan-t5-small ./scripts/t5_cte.py google/flan-t5-small 10
sbatch --gres=gpu:2 --mem=10GB --time=2:00:00 --output=./out/string/%A/%a-wlo-primed-5.log ./slurm_scripts/run_full.sh ./data/string/wlo-primed-5.csv ./results/string/wlo-primed-5/google/flan-t5-small ./scripts/t5_cte.py google/flan-t5-small 10
sbatch --gres=gpu:2 --mem=10GB --time=2:00:00 --output=./out/string/%A/%a-wlo-primed-6.log ./slurm_scripts/run_full.sh ./data/string/wlo-primed-6.csv ./results/string/wlo-primed-6/google/flan-t5-small ./scripts/t5_cte.py google/flan-t5-small 10
