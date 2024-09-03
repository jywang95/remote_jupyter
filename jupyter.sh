#!/bin/bash
#SBATCH -A MED128
#SBATCH -J test
#SBATCH -p gpu_acmhs
#SBATCH -N 1
#SBATCH -t 2:00:00
#SBATCH -o ./%j-multithread-output.txt
#SBATCH -e ./%j-multithread-error.txt



source ~/miniconda3/etc/profile.d/conda.sh
conda activate fl

port=9000
node=$(hostname -s)
user=$(whoami)


jupyter-notebook --no-browser --port=${port} --ip=${node}