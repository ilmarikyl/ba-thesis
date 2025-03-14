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

srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-res1_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_exp7_res1.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-res2_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_exp7_res2.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-res3_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_exp7_res3.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-res4_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_exp7_res4.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-res5_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_exp7_res5.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-res6_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_exp7_res6.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-res7_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_exp7_res7.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-res8_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_exp7_res8.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-res9_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_exp7_res9.txt -replace_unk -verbose
srun python ../../../../translate.py -model ../models/turkish_models/model-turkish-medium-res10_step_12500.pt -src ../../../language_data/turkish/src-turkish-uncovered-test-1000 -output ../test_data_accuracies_and_translate_results/turkish_accuracies_and_translate_results/pred_test_data_turkish_12500_exp7_res10.txt -replace_unk -verbose
