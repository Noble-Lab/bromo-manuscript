#! /bin/bash

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate bromo_env

seed_values=(seed0 seed10 seed20 seed30 seed40)

bromo-xgboost predict \
    --test_file ../../../Datasets/pretraining/human-astral/val.tsv \
    --xgboost_model_file ../../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../../Datasets/learning_curve/human-astral/sample_full \
    --mode single \
    --add_terminal

##### astral val set ######
for seed_value in "${seed_values[@]}"; do
    #0.01
    bromo-xgboost predict \
        --test_file ../../../Datasets/pretraining/human-astral/val.tsv \
        --xgboost_model_file ../../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.01/xgboost_model.json \
        --output_dir ../../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.01 \
        --mode single \
        --add_terminal

    # 0.025
    bromo-xgboost predict \
        --test_file ../../../Datasets/pretraining/human-astral/val.tsv \
        --xgboost_model_file ../../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.025/xgboost_model.json \
        --output_dir ../../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.025 \
        --mode single \
        --add_terminal


    #0.05
    bromo-xgboost predict \
        --test_file ../../../Datasets/pretraining/human-astral/val.tsv \
        --xgboost_model_file ../../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.05/xgboost_model.json \
        --output_dir ../../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.05 \
        --mode single \
        --add_terminal


    #0.1
    bromo-xgboost predict \
        --test_file ../../../Datasets/pretraining/human-astral/val.tsv \
        --xgboost_model_file ../../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.1/xgboost_model.json \
        --output_dir ../../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.1 \
        --mode single \
        --add_terminal


    #0.25
    bromo-xgboost predict \
        --test_file ../../../Datasets/pretraining/human-astral/val.tsv \
        --xgboost_model_file ../../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.25/xgboost_model.json \
        --output_dir ../../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.25 \
        --mode single \
        --add_terminal


    #0.5
    bromo-xgboost predict \
        --test_file ../../../Datasets/pretraining/human-astral/val.tsv \
        --xgboost_model_file ../../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.5/xgboost_model.json \
        --output_dir ../../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.5 \
        --mode single \
        --add_terminal
    #0.6
    bromo-xgboost predict \
        --test_file ../../../Datasets/pretraining/human-astral/val.tsv \
        --xgboost_model_file ../../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.6/xgboost_model.json \
        --output_dir ../../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.6 \
        --mode single \
        --add_terminal

    # #0.75
    bromo-xgboost predict \
        --test_file ../../../Datasets/pretraining/human-astral/val.tsv \
        --xgboost_model_file ../../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.75/xgboost_model.json \
        --output_dir ../../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.75 \
        --mode single \
        --add_terminal

    #0.9
    bromo-xgboost predict \
        --test_file ../../../Datasets/pretraining/human-astral/val.tsv \
        --xgboost_model_file ../../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.9/xgboost_model.json \
        --output_dir ../../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.9 \
        --mode single \
        --add_terminal
    #0.95
    bromo-xgboost predict \
        --test_file ../../../Datasets/pretraining/human-astral/val.tsv \
        --xgboost_model_file ../../../ModelCheckpoints/LearningCurves/human-astral/${seed_value}/sample_0.95/xgboost_model.json \
        --output_dir ../../../Datasets/learning_curve/human-astral/${seed_value}/sample_0.95 \
        --mode single \
        --add_terminal
done