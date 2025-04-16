#!/bin/bash
#SBATCH --job-name=pi_montecarlo
#SBATCH --mem-per-cpu=500M
#SBATCH --time=00:20:00
#SBATCH --array=0-3
#SBATCH --output pi.%a.out

IDXTEN=$(( 10 ** (SLURM_ARRAY_TASK_ID + 2) ))

module load pi
srun pi $IDXTEN



