#!/bin/bash
#SBATCH -A MED128
#SBATCH -J test
#SBATCH -p gpu_acmhs
#SBATCH -N 1
#SBATCH -t 2:00:00


unset XDG_RUNTIME_DIR
cd $HOME

jupyter-notebook --ip=$(hostname -i) --port=9000