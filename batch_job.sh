#!/usr/bin/env bash
#SBATCH --nodes=1
#SBATCH --gres=gpu:4
#SBATCH --mem=1TB
#SBATCH --cpus-per-task=16
#SBATCH --time=12:00:0
#SBATCH --output=/nobackup/users/dpfrom/logs/batch-%j.log
#SBATCH --chdir=/nobackup/users/dpfrom/projects/diffusion_policy_pt
#SBATCH --ntasks=5

srun --ntasks 5 bash run_wandb_agent.sh $1 $2
