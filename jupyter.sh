#!/bin/bash
#SBATCH -A MED128
#SBATCH -J test
#SBATCH -p gpu_acmhs
#SBATCH -N 1
#SBATCH -t 2:00:00
#SBATCH -o ./%j-multithread-output.txt
#SBATCH -e ./%j-multithread-error.txt



# source ~/miniconda3/etc/profile.d/conda.sh
source /gpfs/wolf2/olcf/stf007/8i9/jupyter_env


port=1995
node=$(hostname -s)
user=$(whoami)



jupyter-notebook --no-browser --port=${port} --ip=baseline-gpu1