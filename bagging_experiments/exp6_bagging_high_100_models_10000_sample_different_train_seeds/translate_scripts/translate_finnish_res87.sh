#!/bin/bash
#SBATCH -n 1
#SBATCH -p gpu
#SBATCH -t 03:00:00
#SBATCH --gres=gpu:k80:1
#SBATCH --mail-user=ilmari.kylliainen@helsinki.fi
#SBATCH --mail-type=END
#SBATCH --mem=10000
#SBATCH                                                                                                                                                                              
module purge
module load python-env/intelpython3.6-2018.3 gcc/5.4.0 cuda/9.0 cudnn/7.1-cuda9

srun python ../../../../translate.py -model ../models/finnish_models/model-finnish-high-res87_step_12500.pt -src ../../../language_data/finnish/src-finnish-dev-1000 -output ../accuracies_and_translate_results/finnish_accuracies_and_translate_results/pred_finnish_12500_exp6_res87.txt -replace_unk -verbose
rm -f slurm*
