#!/usr/bin/env bash
#SBATCH --job-name=TA_teacher
#SBATCH --output=so_teacher%j.log
#SBATCH --error=so_teacher%j.err
#SBATCH --mail-user=hlaing@uni-hildesheim.de
#SBATCH --partition=STUD
#SBATCH --gres=gpu:1


source /home/hlaing/miniconda3/bin/activate teacher
cd /home/hlaing/thesis/Teacher-Assistant-Knowledge-Distillation
srun bash ./run_teacher.sh