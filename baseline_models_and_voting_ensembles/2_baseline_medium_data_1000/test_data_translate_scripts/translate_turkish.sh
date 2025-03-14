#!/bin/bash
#SBATCH -n 1
#SBATCH -p gpu
#SBATCH -t 10:00:00
#SBATCH --gres=gpu:k80:1
#SBATCH --mail-user=ilmari.kylliainen@helsinki.fi
#SBATCH --mail-type=END
#SBATCH --mem=10000
#SBATCH                                                                                                                                                                              
module purge
module load python-env/3.6.3-ml gcc/5.4.0 cuda/9.0 cudnn/7.1-cuda9

srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-s1_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_base_high_s1.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-s2_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_base_high_s2.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-s3_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_base_high_s3.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-s4_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_base_high_s4.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-s5_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_base_high_s5.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-s6_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_base_high_s6.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-s7_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_base_high_s7.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-s8_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_base_high_s8.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-s9_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_base_high_s9.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-s10_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_base_high_s10.txt -replace_unk -verbose
