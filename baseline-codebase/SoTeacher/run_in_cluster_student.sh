#!/usr/bin/env bash
#SBATCH --job-name=so_student
#SBATCH --output=so_student%j.log
#SBATCH --error=so_student%j.err
#SBATCH --mail-user=hlaing@uni-hildesheim.de
#SBATCH --partition=STUD
#SBATCH --gres=gpu:1


source /home/hlaing/miniconda3/bin/activate teacher
cd /home/hlaing/thesis/SoTeacher
srun bash ./run_student.sh