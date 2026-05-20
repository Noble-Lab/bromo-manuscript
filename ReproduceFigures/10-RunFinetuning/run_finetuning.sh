#! /bin/bash

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate bromo_env


#################################### Training from scratch ##########################################
# human-lumos
bromo-model train \
    --model_out_dir ../../ModelCheckpoints/Pretrained/bromo/human-lumos \
    --data_out_dir ../../Datasets/finetuning/human-lumos \
    --train_file ../../Datasets/preprocessing/assign_labels/human-lumos/consensus_label_corrected.tsv \
    --epochs 15 \
    --batch-size 4096 \
    --lr 0.0001 \
    --max-len 30 \
    --max-charge 4 \
    --cpu 4 \
    --weight-decay 1e-2 \
    --load_pretrained_datasets ../../Datasets/pretraining/human-astral

# human-exploris
bromo-model train \
    --model_out_dir ../../ModelCheckpoints/Pretrained/bromo/human-exploris \
    --data_out_dir ../../Datasets/finetuning/human-exploris \
    --train_file ../../Datasets/preprocessing/assign_labels/human-exploris/consensus_label_corrected.tsv \
    --epochs 15 \
    --batch-size 4096 \
    --lr 0.0001 \
    --max-len 30 \
    --max-charge 4 \
    --cpu 4 \
    --weight-decay 1e-2 \
    --load_pretrained_datasets ../../Datasets/pretraining/human-astral


# human-pan
bromo-model train \
    --model_out_dir ../../ModelCheckpoints/Pretrained/bromo/human-pan \
    --data_out_dir ../../Datasets/finetuning/human-pan \
    --train_file ../../Datasets/preprocessing/assign_labels/human-pan/consensus_label_corrected.tsv \
    --epochs 15 \
    --batch-size 4096 \
    --lr 0.0001 \
    --max-len 30 \
    --max-charge 4 \
    --cpu 4 \
    --weight-decay 1e-2 \
    --load_pretrained_datasets ../../Datasets/pretraining/human-astral

# yeast-lumos
bromo-model train \
    --model_out_dir ../../ModelCheckpoints/Pretrained/bromo/yeast-lumos \
    --data_out_dir ../../Datasets/finetuning/yeast-lumos \
    --train_file ../../Datasets/preprocessing/assign_labels/yeast-lumos/consensus_label_corrected.tsv \
    --epochs 15 \
    --batch-size 4096 \
    --lr 0.0001 \
    --max-len 30 \
    --max-charge 4 \
    --cpu 4 \
    --weight-decay 1e-2 


# yeast-exploris
bromo-model train \
    --model_out_dir ../../ModelCheckpoints/Pretrained/bromo/yeast-exploris \
    --data_out_dir ../../Datasets/finetuning/yeast-exploris \
    --train_file ../../Datasets/preprocessing/assign_labels/yeast-exploris/consensus_label_corrected.tsv \
    --epochs 15 \
    --batch-size 4096 \
    --lr 0.0001 \
    --max-len 30 \
    --max-charge 4 \
    --cpu 4 \
    --weight-decay 1e-2 

#################################### finetuning ##########################################
# human-lumos
bromo-model train \
    --model_out_dir ../../ModelCheckpoints/Finetuned/human-lumos \
    --data_out_dir ../../Datasets/finetuning/human-lumos \
    --train_file ../../Datasets/finetuning/human-lumos/train.tsv \
    --val_file ../../Datasets/finetuning/human-lumos/val.tsv \
    --load_model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --epochs 5 \
    --batch-size 4096 \
    --lr 0.00001 \
    --max-len 30 \
    --max-charge 4 \
    --cpu 4 \
    --weight-decay 1e-2

# human-exploris
bromo-model train \
    --model_out_dir ../../ModelCheckpoints/Finetuned/human-exploris \
    --data_out_dir ../../Datasets/finetuning/human-exploris \
    --train_file ../../Datasets/finetuning/human-exploris/train.tsv \
    --val_file ../../Datasets/finetuning/human-exploris/val.tsv \
    --load_model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --epochs 5 \
    --batch-size 4096 \
    --lr 0.00001 \
    --max-len 30 \
    --max-charge 4 \
    --cpu 4 \
    --weight-decay 1e-2

# human-pan
bromo-model train \
    --model_out_dir ../../ModelCheckpoints/Finetuned/human-pan \
    --data_out_dir ../../Datasets/finetuning/human-pan \
    --train_file ../../Datasets/finetuning/human-pan/train.tsv \
    --val_file ../../Datasets/finetuning/human-pan/val.tsv \
    --load_model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --epochs 5 \
    --batch-size 4096 \
    --lr 0.00001 \
    --max-len 30 \
    --max-charge 4 \
    --cpu 4 \
    --weight-decay 1e-2

# yeast-lumos
bromo-model train \
    --model_out_dir ../../ModelCheckpoints/Finetuned/yeast-lumos \
    --data_out_dir ../../Datasets/finetuning/yeast-lumos \
    --train_file ../../Datasets/finetuning/yeast-lumos/train.tsv \
    --val_file ../../Datasets/finetuning/yeast-lumos/val.tsv \
    --load_model ../../ModelCheckpoints/Pretrained/bromo/yeast-astral/peptide_transformer_state_step25700_best.pth \
    --epochs 5 \
    --batch-size 4096 \
    --lr 0.00001 \
    --max-len 30 \
    --max-charge 4 \
    --cpu 4 \
    --weight-decay 1e-2

# yeast-exploris
bromo-model train \
    --model_out_dir ../../ModelCheckpoints/Finetuned/yeast-exploris \
    --data_out_dir ../../Datasets/finetuning/yeast-exploris \
    --train_file ../../Datasets/finetuning/yeast-exploris/train.tsv \
    --val_file ../../Datasets/finetuning/yeast-exploris/val.tsv \
    --load_model ../../ModelCheckpoints/Pretrained/bromo/yeast-astral/peptide_transformer_state_step25700_best.pth \
    --epochs 5 \
    --batch-size 4096 \
    --lr 0.00001 \
    --max-len 30 \
    --max-charge 4 \
    --cpu 4 \
    --weight-decay 1e-2