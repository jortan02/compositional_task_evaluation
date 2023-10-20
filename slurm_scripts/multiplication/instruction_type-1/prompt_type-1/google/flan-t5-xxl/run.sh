#!/bin/bash
# cd "$(dirname "$0")"

sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xxl 1  10
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xxl 2  10
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xxl 3  10
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xxl 4  10
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xxl 5  10
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xxl 6  10
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xxl 7  10
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xxl 8  10
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xxl 9  10
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/carry.sh google/flan-t5-xxl 10 10

sbatch --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xxl 1  25
sbatch --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xxl 2  25
sbatch --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xxl 3  25
sbatch --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xxl 4  25
sbatch --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xxl 5  25
sbatch --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xxl 6  25
sbatch --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xxl 7  25
sbatch --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xxl 8  25
sbatch --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xxl 9  25
sbatch --mem=40GB --time=1:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/concatenate.sh google/flan-t5-xxl 10 25

sbatch --mem=40GB --time=12:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xxl 1  25
sbatch --mem=40GB --time=12:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xxl 2  25
sbatch --mem=40GB --time=12:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xxl 3  25
sbatch --mem=40GB --time=12:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xxl 4  25
sbatch --mem=40GB --time=12:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xxl 5  25
sbatch --mem=40GB --time=12:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xxl 6  25
sbatch --mem=40GB --time=12:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xxl 7  25
sbatch --mem=40GB --time=12:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xxl 8  25
sbatch --mem=40GB --time=12:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xxl 9  25
sbatch --mem=40GB --time=12:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-primed-1.sh google/flan-t5-xxl 10 25

sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xxl 1  25
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xxl 2  25
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xxl 3  25
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xxl 4  25
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xxl 5  25
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xxl 6  25
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xxl 7  25
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xxl 8  25
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xxl 9  25
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply.sh google/flan-t5-xxl 10 25

sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xxl 1  25
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xxl 2  25
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xxl 3  25
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xxl 4  25
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xxl 5  25
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xxl 6  25
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xxl 7  25
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xxl 8  25
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xxl 9  25
sbatch --mem=40GB --time=0:10:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/multiply-1-digit.sh google/flan-t5-xxl 10 25

sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xxl 1  100
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xxl 2  100
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xxl 3  100
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xxl 4  100
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xxl 5  100
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xxl 6  100
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xxl 7  100
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xxl 8  100
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xxl 9  100
sbatch --mem=40GB --time=6:00:00 ./slurm_scripts/multiplication/instruction_type-1/prompt_type-1/prompts/sum.sh google/flan-t5-xxl 10 100