#!/bin/bash

##NECESSARY JOB SPECIFICATIONS
#SBATCH --job-name=rsna       #Set the job name to "JobExample2"
#SBATCH --time=48:00:00               #Set the wall clock limit to 6hr and 30min
#SBATCH --nodes=1                    #Request 1 node
#SBATCH --ntasks-per-node=33         #Request 64 tasks/cores per node
#SBATCH --mem=128G                   #Request 248G (248GB) per node
#SBATCH --output=rsna_train.%j #Redirect stdout/err to file
#SBATCH --partition=gpu              #Specify partition to submit job to
#SBATCH --gres=gpu:a100:1 
#SBATCH --account=132715368403

python 2DNet/src/train.py -backbone se_resnext101_32x4d -use_aucmloss -img_size 256 -tbs 80 -vbs 40 -save_path se_resnext101_32x4d_256_aucmloss_trisample_new_2
#python 2DNet/src/train.py -backbone se_resnext101_32x4d -img_size 256 -tbs 80 -vbs 40 -save_path se_resnext101_32x4d_256_2
