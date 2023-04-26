#!/bin/bash -e 

#SBATCH --account nesi99999
#SBATCH --job-name mpi-pi-test
#SBATCH --ntasks 8
#SBATCH --nodes 2
#SBATCH --time 00:10:00

module load Apptainer

export APPTAINER_BIND="/nesi/project,/nesi/nobackup,/opt/nesi"

srun apptainer exec mpi-py.simg pi-mpi.py 100000000
