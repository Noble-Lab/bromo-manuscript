#! /bin/bash

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate bromo_env

# #### human-pan dataset ####
seed_values=(seed0 seed10 seed20 seed30 seed40)

bromo-xgboost train \
    --train_file ../../../Datasets/finetuning/human-pan/train.tsv \
    --val_file ../../../Datasets/finetuning/human-pan/val.tsv \
    --output_dir ../../../ModelCheckpoints/Pretrained/xgboost/human-pan \
    --mode single \
    --add_terminal \
    --load_config ../../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_config.json

for seed_value in "${seed_values[@]}"; do
    bromo-xgboost train \
        --train_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.01/sampled_proteins_0.01.tsv \
        --val_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.01/val.tsv \
        --output_dir ../../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.01 \
        --mode single \
        --add_terminal \
        --load_config ../../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_config.json

    
    bromo-xgboost train \
        --train_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.025/sampled_proteins_0.025.tsv \
        --val_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.025/val.tsv \
        --output_dir ../../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.025 \
        --mode single \
        --add_terminal \
        --load_config ../../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_config.json

    bromo-xgboost train \
        --train_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.05/sampled_proteins_0.05.tsv \
        --val_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.05/val.tsv \
        --output_dir ../../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.05 \
        --mode single \
        --add_terminal \
        --load_config ../../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_config.json

    bromo-xgboost train \
        --train_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.1/sampled_proteins_0.1.tsv \
        --val_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.1/val.tsv \
        --output_dir ../../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.1 \
        --mode single \
        --add_terminal \
        --load_config ../../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_config.json

    bromo-xgboost train \
        --train_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.25/sampled_proteins_0.25.tsv \
        --val_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.25/val.tsv \
        --output_dir ../../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.25 \
        --mode single \
        --add_terminal \
        --load_config ../../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_config.json

    bromo-xgboost train \
        --train_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.5/sampled_proteins_0.5.tsv \
        --val_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.5/val.tsv \
        --output_dir ../../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.5 \
        --mode single \
        --add_terminal \
        --load_config ../../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_config.json

    bromo-xgboost train \
        --train_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.6/sampled_proteins_0.6.tsv \
        --val_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.6/val.tsv \
        --output_dir ../../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.6 \
        --mode single \
        --add_terminal \
        --load_config ../../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_config.json

    bromo-xgboost train \
        --train_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.75/sampled_proteins_0.75.tsv \
        --val_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.75/val.tsv \
        --output_dir ../../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.75 \
        --mode single \
        --add_terminal \
        --load_config ../../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_config.json

    bromo-xgboost train \
        --train_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.9/sampled_proteins_0.9.tsv \
        --val_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.9/val.tsv \
        --output_dir ../../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.9 \
        --mode single \
        --add_terminal \
        --load_config ../../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_config.json

    bromo-xgboost train \
        --train_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.95/sampled_proteins_0.95.tsv \
        --val_file ../../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.95/val.tsv \
        --output_dir ../../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.95 \
        --mode single \
        --add_terminal \
        --load_config ../../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_config.json
done