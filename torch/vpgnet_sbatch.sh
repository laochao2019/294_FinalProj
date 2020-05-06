#!/bin/bash
# Job name:
#SBATCH --job-name=vpgnet_run_may3
#
# Account:
#SBATCH --account=fc_vivelab
#
# Partition:
#SBATCH --partition=savio2
#
# Request one node:
#SBATCH --nodes=2
#
# Request cores (24, for example)
#SBATCH --ntasks-per-node=1
#
#Request CPU
#SBATCH --cpus-per-task=4
#
# Wall clock limit:
#SBATCH --time=72:00:00
#
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=akashgokul@berkeley.edu
## Command(s) to run (example):
module load python
module load cuda/10.1
source activate /global/scratch/akashgokul/kaolin_run
python3 main.py --root_dir /global/scratch/akashgokul/VPGNet_Yohan --csv_path /global/scratch/akashgokul/VPGNet_data/mat_paths.csv --batch_size 32 --num_epochs_vp 5 --num_epochs_general 5
