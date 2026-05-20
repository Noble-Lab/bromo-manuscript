#! /bin/bash

##################################### Train xgboost baseline #########################################################
# #### HUMAN-ASTRAL dataset ####
python -u xgboost_baseline.py train \
    --train_file ../../Datasets/pretraining/human-astral/train.tsv \
    --val_file ../../Datasets/pretraining/human-astral/val.tsv \
    --output_dir ../../ModelCheckpoints/Pretrained/xgboost/human-astral \
    --mode single

################################### Run Inference on test sets ###################################
# ## HUMAN-ASTRAL test set ######
python -u xgboost_baseline.py predict \
    --test_file ../../Datasets/pretraining/human-astral/test.tsv \
    --xgboost_model_file ../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../Datasets/inference/human-astral \
    --mode single

## YEAST-ASTRAL entire dataset ######
python -u xgboost_baseline.py predict \
    --test_file ../../Datasets/preprocessing/assign_labels/yeast-astral/consensus_label_corrected.tsv \
    --xgboost_model_file ../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../Datasets/inference/yeast-astral \
    --mode single

## YEAST-LUMOS entire dataset ######
python -u xgboost_baseline.py predict \
    --test_file ../../Datasets/preprocessing/assign_labels/yeast-lumos/consensus_label_corrected.tsv \
    --xgboost_model_file ../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../Datasets/inference/yeast-lumos \
    --mode single

## YEAST-EXPLORIS entire dataset ######
python -u xgboost_baseline.py predict \
    --test_file ../../Datasets/preprocessing/assign_labels/yeast-exploris/consensus_label_corrected.tsv \
    --xgboost_model_file ../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../Datasets/inference/yeast-exploris \
    --mode single

# ##### HUMAN-PAN entire dataset ######
python -u xgboost_baseline.py predict \
    --test_file ../../Datasets/preprocessing/assign_labels/human-pan/consensus_label_corrected.tsv \
    --xgboost_model_file ../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../Datasets/inference/human-pan \
    --mode single

# ##### HUMAN-LUMOS entire dataset ######
python -u xgboost_baseline.py predict \
    --test_file ../../Datasets/preprocessing/assign_labels/human-lumos/consensus_label_corrected.tsv \
    --xgboost_model_file ../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../Datasets/inference/human-lumos \
    --mode single

# ##### HUMAN-EXPLORIS entire dataset ######
python -u xgboost_baseline.py predict \
    --test_file ../../Datasets/preprocessing/assign_labels/human-exploris/consensus_label_corrected.tsv \
    --xgboost_model_file ../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../Datasets/inference/human-exploris \
    --mode single
