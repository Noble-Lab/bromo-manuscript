#! /bin/bash

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate bromo_env

export PYTHONUNBUFFERED=1

################################### Pretrain Bromo ###################################
### Pretrain Bromo on Human-ASTRAL dataset
bromo-model train \
    --model_out_dir ../../ModelCheckpoints/Pretrained/bromo/human-astral \
    --data_out_dir ../../Datasets/pretraining/human-astral \
    --train_file ../../Datasets/preprocessing/assign_labels/human-astral/consensus_label_corrected.tsv \
    --epochs 15 \
    --batch-size 4096 \
    --lr 0.0001 \
    --max-len 30 \
    --max-charge 4 \
    --cpu 4 \
    --weight-decay 1e-2 \
    --n_trials 10 \
    --tune_epochs 2


################################### Run Inference on test sets ###################################

##### HUMAN-ASTRAL test set ######
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/pretraining/human-astral/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/inference/human-astral/testset_predictions.tsv 

##### YEAST-LUMOS entire dataset ######
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/preprocessing/assign_labels/yeast-lumos/consensus_label_corrected.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/inference/yeast-lumos/full_predictions.tsv 

##### YEAST-EXPLORIS entire dataset ######
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/preprocessing/assign_labels/yeast-exploris/consensus_label_corrected.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/inference/yeast-exploris/full_predictions.tsv 

##### YEAST-ASTRAL entire dataset ######
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/preprocessing/assign_labels/yeast-astral/consensus_label_corrected.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/inference/yeast-astral/full_predictions.tsv 

##### HUMAN-EXPLORIS entire dataset ######
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/preprocessing/assign_labels/human-exploris/consensus_label_corrected.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/inference/human-exploris/full_predictions.tsv 


##### HUMAN-LUMOS entire dataset ######
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/preprocessing/assign_labels/human-lumos/consensus_label_corrected.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/inference/human-lumos/full_predictions.tsv 


##### HUMAN-PAN entire dataset ######
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/preprocessing/assign_labels/human-pan/consensus_label_corrected.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/inference/human-pan/full_predictions.tsv 

