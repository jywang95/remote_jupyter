#!/bin/bash
#SBATCH -A MED128
#SBATCH -J test
#SBATCH -p gpu_acmhs
#SBATCH -N 1
#SBATCH -t 2:00:00
#SBATCH -o ./%j-multithread-output.txt
#SBATCH -e ./%j-multithread-error.txt



source activate /gpfs/wolf2/olcf/stf007/8i9/jupyter_env




jupyter notebook --no-browser --port=8008 --ip=baseline-gpu1