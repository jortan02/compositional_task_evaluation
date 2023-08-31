#!/bin/bash
#SBATCH --requeue
#SBATCH --account soc-gpu-np
#SBATCH --partition soc-gpu-np
#SBATCH --ntasks-per-node=32
#SBATCH --nodes=1
#SBATCH --gres=gpu:a100:1
#SBATCH --time=8:00:00
#SBATCH --mem=80GB
#SBATCH --mail-user=jordan.tan@utah.edu
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH -o compositional_task_evaluation_out-%j

source ~/miniconda3/etc/profile.d/conda.sh
conda activate compositional

mkdir /scratch/general/vast/u1283221/huggingface_cache
export TRANSFORMERS_CACHE="/scratch/general/vast/u1283221/huggingface_cache"
python generate_datasets.py

# Llama-2-7b-hf
# python llama2_cte.py ./data/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/Llama-2-7b-hf_multiply_1_digit.csv meta-llama/Llama-2-7b-hf
# python llama2_cte.py ./data/carry.csv ./results/multiplication/carry/Llama-2-7b-hf_carry.csv meta-llama/Llama-2-7b-hf
# python llama2_cte.py ./data/sum.csv ./results/multiplication/sum/Llama-2-7b-hf_sum.csv meta-llama/Llama-2-7b-hf
# python llama2_cte.py ./data/multiply.csv ./results/multiplication/multiply/Llama-2-7b-hf_multiply.csv meta-llama/Llama-2-7b-hf
# python llama2_cte.py ./data/concatenate.csv ./results/multiplication/concatenate/Llama-2-7b-hf_concatenate.csv meta-llama/Llama-2-7b-hf

# Llama-2-13b-hf
# python llama2_cte.py ./data/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/Llama-2-13b-hf_multiply_1_digit.csv meta-llama/Llama-2-13b-hf
# python llama2_cte.py ./data/carry.csv ./results/multiplication/carry/Llama-2-13b-hf_carry.csv meta-llama/Llama-2-13b-hf
# python llama2_cte.py ./data/sum.csv ./results/multiplication/sum/Llama-2-13b-hf_sum.csv meta-llama/Llama-2-13b-hf
# python llama2_cte.py ./data/multiply.csv ./results/multiplication/multiply/Llama-2-13b-hf_multiply.csv meta-llama/Llama-2-13b-hf
# python llama2_cte.py ./data/concatenate.csv ./results/multiplication/concatenate/Llama-2-13b-hf_concatenate.csv meta-llama/Llama-2-13b-hf

# Llama-2-70b-hf
python llama2_cte.py ./data/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/flan_t5_large_multiply_1_digit.csv meta-llama/Llama-2-70b-hf
python llama2_cte.py ./data/carry.csv ./results/multiplication/carry/flan_t5_large_carry.csv meta-llama/Llama-2-70b-hf
python llama2_cte.py ./data/sum.csv ./results/multiplication/sum/flan_t5_large_sum.csv meta-llama/Llama-2-70b-hf
python llama2_cte.py ./data/multiply.csv ./results/multiplication/multiply/flan_t5_large_multiply.csv meta-llama/Llama-2-70b-hf
python llama2_cte.py ./data/concatenate.csv ./results/multiplication/concatenate/flan_t5_large_concatenate.csv meta-llama/Llama-2-70b-hf

# Llama-2-7b-chat-hf
# python llama2_cte.py ./data/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/Llama-2-7b-chat-hf_multiply_1_digit.csv meta-llama/Llama-2-7b-chat-hf
# python llama2_cte.py ./data/carry.csv ./results/multiplication/carry/Llama-2-7b-chat-hf_carry.csv meta-llama/Llama-2-7b-chat-hf
# python llama2_cte.py ./data/sum.csv ./results/multiplication/sum/Llama-2-7b-chat-hf_sum.csv meta-llama/Llama-2-7b-chat-hf
# python llama2_cte.py ./data/multiply.csv ./results/multiplication/multiply/Llama-2-7b-chat-hf_multiply.csv meta-llama/Llama-2-7b-chat-hf
# python llama2_cte.py ./data/concatenate.csv ./results/multiplication/concatenate/Llama-2-7b-chat-hf_concatenate.csv meta-llama/Llama-2-7b-chat-hf

# Llama-2-13b-chat-hf
# python llama2_cte.py ./data/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/Llama-2-13b-chat-hf_multiply_1_digit.csv meta-llama/Llama-2-13b-chat-hf
# python llama2_cte.py ./data/carry.csv ./results/multiplication/carry/Llama-2-13b-chat-hf_carry.csv meta-llama/Llama-2-13b-chat-hf
# python llama2_cte.py ./data/sum.csv ./results/multiplication/sum/Llama-2-13b-chat-hf_sum.csv meta-llama/Llama-2-13b-chat-hf
# python llama2_cte.py ./data/multiply.csv ./results/multiplication/multiply/Llama-2-13b-chat-hf_multiply.csv meta-llama/Llama-2-13b-chat-hf
# python llama2_cte.py ./data/concatenate.csv ./results/multiplication/concatenate/Llama-2-13b-chat-hf_concatenate.csv meta-llama/Llama-2-13b-chat-hf

# # Llama-2-70b-chat-hf
# python llama2_cte.py ./data/multiply_1_digit.csv ./results/multiplication/multiply_1_digit/flan_t5_large_multiply_1_digit.csv meta-llama/Llama-2-70b-chat-hf
# python llama2_cte.py ./data/carry.csv ./results/multiplication/carry/flan_t5_large_carry.csv meta-llama/Llama-2-70b-chat-hf
# python llama2_cte.py ./data/sum.csv ./results/multiplication/sum/flan_t5_large_sum.csv meta-llama/Llama-2-70b-chat-hf
# python llama2_cte.py ./data/multiply.csv ./results/multiplication/multiply/flan_t5_large_multiply.csv meta-llama/Llama-2-70b-chat-hf
# python llama2_cte.py ./data/concatenate.csv ./results/multiplication/concatenate/flan_t5_large_concatenate.csv meta-llama/Llama-2-70b-chat-hf