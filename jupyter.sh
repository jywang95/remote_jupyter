 #!/bin/bash
 #SBATCH -A MEB128
 #SBATCH -J test
 #SBATCH -p gpu_acmhs
 #SBATCH -N 1
 #SBATCH -t 2:00:00

srun jupyter-notebook --ip=$(hostname -i) --port=9000