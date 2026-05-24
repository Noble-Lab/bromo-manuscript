
#! /bin/bash

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate bromo_env

seed_values=(seed0 seed10 seed20 seed30 seed40)
seeds=(0 10 20 30 40)
sample_values=(0.01 0.025 0.05 0.1 0.25 0.5 0.6 0.75 0.9 0.95)
sample_dirs=(sample_0.01 sample_0.025 sample_0.05 sample_0.1 sample_0.25 sample_0.5 sample_0.6 sample_0.75 sample_0.9 sample_0.95)

base_out_dir="../../ModelCheckpoints/LearningCurves/human-pan"
train_file="../../Datasets/finetuning/human-pan/train.tsv"
val_file="../../Datasets/finetuning/human-pan/val.tsv"
data_out_dir="../../Datasets/learning_curves/human-pan"

for seed_value in "${seed_values[@]}"; do
  seed="${seeds[i]}"
  for i in "${!sample_values[@]}"; do
    sample_value="${sample_values[i]}"
    sample_dir="${sample_dirs[i]}"

    bromo-model train \
      --model_out_dir "${base_out_dir}/${seed_value}/${sample_dir}/" \
      --train_file "${train_file}" \
      --val_file "${val_file}" \
      --data_out_dir "${data_out_dir}/${seed_value}/${sample_dir}" \
      --epochs 3 \
      --sample "${sample_value}" \
      --batch-size 4096 \
      --lr 0.0001 \
      --max-len 30 \
      --max-charge 4 \
      --cpu 4 \
      --weight-decay 1e-2 \
      --val-interval 20 \
      --seed ${seed}
  done
done