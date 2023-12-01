#!/bin/bash
# cd "$(dirname "$0")"

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/uppercase.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/uppercase.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/uppercase.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/uppercase.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/uppercase.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/uppercase.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/uppercase.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/uppercase.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/uppercase.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/uppercase.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/remove-first.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/remove-first.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/remove-first.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/remove-first.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/remove-first.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/remove-first.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/remove-first.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/remove-first.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/remove-first.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/remove-first.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/concatenate.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10

sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/wlo.sh ./scripts/t5_cte.py google/flan-t5-xxl 1  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/wlo.sh ./scripts/t5_cte.py google/flan-t5-xxl 2  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/wlo.sh ./scripts/t5_cte.py google/flan-t5-xxl 3  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/wlo.sh ./scripts/t5_cte.py google/flan-t5-xxl 4  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/wlo.sh ./scripts/t5_cte.py google/flan-t5-xxl 5  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/wlo.sh ./scripts/t5_cte.py google/flan-t5-xxl 6  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/wlo.sh ./scripts/t5_cte.py google/flan-t5-xxl 7  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/wlo.sh ./scripts/t5_cte.py google/flan-t5-xxl 8  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/wlo.sh ./scripts/t5_cte.py google/flan-t5-xxl 9  10
sbatch --gres=gpu:2 --mem=10GB --time=3:00:00 ./slurm_scripts/string/prompts/wlo.sh ./scripts/t5_cte.py google/flan-t5-xxl 10 10