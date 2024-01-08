sbatch --gres=gpu:a100:2 --mem=10GB --time=12:00:00 --output=./out/multiplication/%j-%a-carry.log ./slurm_scripts/run_full.sh ./data/multiplication/carry.csv ./results/multiplication/carry/google/flan-t5-xl  ./scripts/t5_cte.py google/flan-t5-xl 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=12:00:00 --output=./out/multiplication/%j-%a-concatenate.log ./slurm_scripts/run_full.sh ./data/multiplication/concatenate.csv ./results/multiplication/concatenate/google/flan-t5-xl ./scripts/t5_cte.py google/flan-t5-xl 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=12:00:00 --output=./out/multiplication/%j-%a-multiply-1-digit.log ./slurm_scripts/run_full.sh ./data/multiplication/multiply-1-digit.csv ./results/multiplication/multiply-1-digit/google/flan-t5-xl ./scripts/t5_cte.py google/flan-t5-xl 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=12:00:00 --output=./out/multiplication/%j-%a-multiply.log ./slurm_scripts/run_full.sh ./data/multiplication/multiply.csv ./results/multiplication/multiply/google/flan-t5-xl ./scripts/t5_cte.py google/flan-t5-xl 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=12:00:00 --output=./out/multiplication/%j-%a-multiply-primed-1.log ./slurm_scripts/run_full.sh ./data/multiplication/multiply-primed-1.csv ./results/multiplication/multiply-primed-1/google/flan-t5-xl ./scripts/t5_cte.py google/flan-t5-xl 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=12:00:00 --output=./out/multiplication/%j-%a-multiply-primed-2.log ./slurm_scripts/run_full.sh ./data/multiplication/multiply-primed-2.csv ./results/multiplication/multiply-primed-2/google/flan-t5-xl ./scripts/t5_cte.py google/flan-t5-xl 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=12:00:00 --output=./out/multiplication/%j-%a-multiply-primed-3.log ./slurm_scripts/run_full.sh ./data/multiplication/multiply-primed-3.csv ./results/multiplication/multiply-primed-3/google/flan-t5-xl ./scripts/t5_cte.py google/flan-t5-xl 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=12:00:00 --output=./out/multiplication/%j-%a-multiply-primed-4.log ./slurm_scripts/run_full.sh ./data/multiplication/multiply-primed-4.csv ./results/multiplication/multiply-primed-4/google/flan-t5-xl ./scripts/t5_cte.py google/flan-t5-xl 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=12:00:00 --output=./out/multiplication/%j-%a-multiply-primed-5.log ./slurm_scripts/run_full.sh ./data/multiplication/multiply-primed-5.csv ./results/multiplication/multiply-primed-5/google/flan-t5-xl ./scripts/t5_cte.py google/flan-t5-xl 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=12:00:00 --output=./out/multiplication/%j-%a-multiply-primed-6.log ./slurm_scripts/run_full.sh ./data/multiplication/multiply-primed-6.csv ./results/multiplication/multiply-primed-6/google/flan-t5-xl ./scripts/t5_cte.py google/flan-t5-xl 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=12:00:00 --output=./out/multiplication/%j-%a-multiply-primed-7.log ./slurm_scripts/run_full.sh ./data/multiplication/multiply-primed-7.csv ./results/multiplication/multiply-primed-7/google/flan-t5-xl ./scripts/t5_cte.py google/flan-t5-xl 10
sbatch --gres=gpu:a100:2 --mem=10GB --time=12:00:00 --output=./out/multiplication/%j-%a-sum.log ./slurm_scripts/run_full.sh ./data/multiplication/sum.csv ./results/multiplication/sum/google/flan-t5-xl ./scripts/t5_cte.py google/flan-t5-xl 10