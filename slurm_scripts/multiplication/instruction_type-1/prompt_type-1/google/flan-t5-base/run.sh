#!/bin/bash
cd "$(dirname "$0")"

prompt_path = "slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts"

sbatch --mem=20GB --time=4:00:00 $prompt_path/carry.sh google/flan-t5-base 1000
sbatch --mem=20GB --time=4:00:00 $prompt_path/concatenate.sh google/flan-t5-base 1000
sbatch --mem=20GB --time=4:00:00 $prompt_path/multiply-1-digit.sh google/flan-t5-base 1000
sbatch --mem=20GB --time=4:00:00 $prompt_path/multiply.sh google/flan-t5-base 1000
sbatch --mem=20GB --time=4:00:00 $prompt_path/sum.sh google/flan-t5-base 1000