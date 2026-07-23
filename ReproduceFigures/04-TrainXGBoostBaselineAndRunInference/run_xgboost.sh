#! /bin/bash

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate bromo_env
export PYTHONUNBUFFERED=1

##################################### Train xgboost baseline #########################################################
# #### HUMAN-ASTRAL dataset ####
bromo-xgboost train \
    --train_file ../../Datasets/pretraining/human-astral/train.tsv \
    --val_file ../../Datasets/pretraining/human-astral/val.tsv \
    --output_dir ../../ModelCheckpoints/Pretrained/xgboost/human-astral \
    --mode single \
    --add_terminal \
    --tune \
    --n_trials 10


################################### Run Inference on test sets ###################################
# ## HUMAN-ASTRAL test set ######
bromo-xgboost predict \
    --test_file ../../Datasets/pretraining/human-astral/test.tsv \
    --xgboost_model_file ../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../Datasets/inference/human-astral \
    --mode single \
    --add_terminal

## YEAST-ASTRAL entire dataset ######
bromo-xgboost predict \
    --test_file ../../Datasets/preprocessing/assign_labels/yeast-astral/consensus_label_corrected.tsv \
    --xgboost_model_file ../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../Datasets/inference/yeast-astral \
    --mode single \
    --add_terminal

## YEAST-LUMOS entire dataset ######
bromo-xgboost predict \
    --test_file ../../Datasets/preprocessing/assign_labels/yeast-lumos/consensus_label_corrected.tsv \
    --xgboost_model_file ../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../Datasets/inference/yeast-lumos \
    --mode single \
    --add_terminal

## YEAST-EXPLORIS entire dataset ######
bromo-xgboost predict \
    --test_file ../../Datasets/preprocessing/assign_labels/yeast-exploris/consensus_label_corrected.tsv \
    --xgboost_model_file ../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../Datasets/inference/yeast-exploris \
    --mode single \
    --add_terminal

# ##### HUMAN-PAN entire dataset ######
bromo-xgboost predict \
    --test_file ../../Datasets/preprocessing/assign_labels/human-pan/consensus_label_corrected.tsv \
    --xgboost_model_file ../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../Datasets/inference/human-pan \
    --mode single \
    --add_terminal

# ##### HUMAN-LUMOS entire dataset ######
bromo-xgboost predict \
    --test_file ../../Datasets/preprocessing/assign_labels/human-lumos/consensus_label_corrected.tsv \
    --xgboost_model_file ../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../Datasets/inference/human-lumos \
    --mode single \
    --add_terminal

# ##### HUMAN-EXPLORIS entire dataset ######
bromo-xgboost predict \
    --test_file ../../Datasets/preprocessing/assign_labels/human-exploris/consensus_label_corrected.tsv \
    --xgboost_model_file ../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --output_dir ../../Datasets/inference/human-exploris \
    --mode single \
    --add_terminal
