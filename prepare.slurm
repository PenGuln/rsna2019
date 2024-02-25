#!/bin/bash

##NECESSARY JOB SPECIFICATIONS
#SBATCH --job-name=rsna       #Set the job name to "JobExample2"
#SBATCH --time=8:00:00               #Set the wall clock limit to 6hr and 30min
#SBATCH --nodes=1                    #Request 1 node
#SBATCH --ntasks-per-node=4         #Request 64 tasks/cores per node
#SBATCH --mem=16G                   #Request 248G (248GB) per node
#SBATCH --output=rsna_prepare_cpu.%j #Redirect stdout/err to file
#SBATCH --account=132715368403

bash prepare.sh
