#! /bin/bash

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate bromoenv
cd /net/noble/vol3/user/ssontha2/yash_noble_rotation/bromo-manuscript/ReproduceFigures/12-LearningCurves/human-astral

seed_values=(seed0 seed10 seed20 seed30 seed40)

for seed_value in "${seed_values[@]}"; do
    bromo xgboost train \
        --train_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.01/sampled_proteins_0.01.tsv \
        --val_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.01/val.tsv \
        --output_dir ../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.01 \
        --mode single

    bromo xgboost train \
        --train_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.05/sampled_proteins_0.05.tsv \
        --val_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.05/val.tsv \
        --output_dir ../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.05 \
        --mode single

    bromo xgboost train \
        --train_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.1/sampled_proteins_0.1.tsv \
        --val_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.1/val.tsv \
        --output_dir ../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.1 \
        --mode single

    bromo xgboost train \
        --train_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.25/sampled_proteins_0.25.tsv \
        --val_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.25/val.tsv \
        --output_dir ../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.25 \
        --mode single

    bromo xgboost train \
        --train_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.5/sampled_proteins_0.5.tsv \
        --val_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.5/val.tsv \
        --output_dir ../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.5 \
        --mode single

    bromo xgboost train \
        --train_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.6/sampled_proteins_0.6.tsv \
        --val_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.6/val.tsv \
        --output_dir ../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.6 \
        --mode single

    bromo xgboost train \
        --train_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.75/sampled_proteins_0.75.tsv \
        --val_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.75/val.tsv \
        --output_dir ../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.75 \
        --mode single

    bromo xgboost train \
        --train_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.9/sampled_proteins_0.9.tsv \
        --val_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.9/val.tsv \
        --output_dir ../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.9 \
        --mode single

    bromo xgboost train \
        --train_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.95/sampled_proteins_0.95.tsv \
        --val_file ../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.95/val.tsv \
        --output_dir ../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.95 \
        --mode single
done