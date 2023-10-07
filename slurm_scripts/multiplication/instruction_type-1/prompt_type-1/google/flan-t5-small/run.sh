#!/bin/bash
cd "$(dirname "$0")"

sbatch --mem=20GB --time=4:00:00 ./../../prompts/carry.sh google/flan-t5-small 1000
sbatch --mem=20GB --time=4:00:00 ./../../prompts/concatenate.sh google/flan-t5-small 1000
sbatch --mem=20GB --time=4:00:00 ./../../prompts/multiply-1-digit.sh google/flan-t5-small 1000
sbatch --mem=20GB --time=4:00:00 ./../../prompts/multiply.sh google/flan-t5-small 1000
sbatch --mem=20GB --time=4:00:00 ./../../prompts/sum.sh google/flan-t5-small 1000