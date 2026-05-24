#! /bin/bash

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate bromo_env
seeds=(${seed} seed10 seed20 seed30 seed40)

# #### human-pan dataset ####

## full sample
bromo eval \
    --bromo_preds_path ../../Datasets/learning_curve/human-pan/sample_full/bromo_val_predictions.tsv \
    --xgboost_preds_path ../../Datasets/learning_curve/human-pan/sample_full/xgboost_predictions.tsv \
    --topk 5

for seed in "${seeds[@]}"; do
    bromo eval \
        --bromo_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.01/bromo_val_predictions.tsv \
        --xgboost_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.01/xgboost_predictions.tsv \
        --topk 5

    bromo eval \
        --bromo_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.025/bromo_val_predictions.tsv \
        --xgboost_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.025/xgboost_predictions.tsv \
        --topk 5

    bromo eval \
        --bromo_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.05/bromo_val_predictions.tsv \
        --xgboost_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.05/xgboost_predictions.tsv \
        --topk 5

    bromo eval \
        --bromo_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.1/bromo_val_predictions.tsv \
        --xgboost_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.1/xgboost_predictions.tsv \
        --topk 5

    bromo eval \
        --bromo_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.25/bromo_val_predictions.tsv \
        --xgboost_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.25/xgboost_predictions.tsv \
        --topk 5

    bromo eval \
        --bromo_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.5/bromo_val_predictions.tsv \
        --xgboost_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.5/xgboost_predictions.tsv \
        --topk 5

    bromo eval \
        --bromo_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.6/bromo_val_predictions.tsv \
        --xgboost_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.6/xgboost_predictions.tsv \
        --topk 5

    bromo eval \
        --bromo_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.75/bromo_val_predictions.tsv \
        --xgboost_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.75/xgboost_predictions.tsv \
        --topk 5

    bromo eval \
        --bromo_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.9/bromo_val_predictions.tsv \
        --xgboost_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.9/xgboost_predictions.tsv \
        --topk 5

    bromo eval \
        --bromo_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.95/bromo_val_predictions.tsv \
        --xgboost_preds_path ../../Datasets/learning_curve/human-pan/${seed}/sample_0.95/xgboost_predictions.tsv \
        --topk 5
done