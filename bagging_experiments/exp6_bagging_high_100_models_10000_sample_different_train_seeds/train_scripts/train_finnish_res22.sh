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

srun python ../../../../train.py -data ../finnish-train-high-10000to10000/data_finnish_resample10000_s22 -save_model ../models/finnish_models/model-finnish-high-res22 -world_size 1 -gpu_ranks 0 1 -layers 1 -rnn_size 300 -src_word_vec_size 100 -tgt_word_vec_size 100 -encoder_type brnn -global_attention general -optim adam -learning_rate 0.001 -report_every 100 -valid_steps 100 -train_steps 12500 -save_checkpoint_steps 12500 -seed 22 -log_file log_file_finnish_s22
rm -f slurm*
