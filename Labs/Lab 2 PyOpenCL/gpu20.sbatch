#!/bin/bash
#SBATCH --job-name=gpu20   # job name
#SBATCH --output=gpu20.out # output log file
#SBATCH --error=gpu20.err  # error file
#SBATCH --time=00:05:00  # 5 minutes of wall time
#SBATCH --nodes=1        # 1 GPU node
#SBATCH --partition=gpu2 # GPU2 partition
#SBATCH --ntasks=1       # 1 CPU core to drive GPU
#SBATCH --gres=gpu:1     # Request 1 GPU

module load cuda
module load python/anaconda-2019.03

python3 ./gpu20.py
