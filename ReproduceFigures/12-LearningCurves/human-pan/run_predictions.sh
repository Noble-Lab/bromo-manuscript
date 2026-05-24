#! /bin/bash

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate bromo_env

##### pan dataset val set ######

seed_values=(seed0 seed10 seed20 seed30 seed40)


bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-pan/peptide_transformer_full*.pth \
    --test-file ../../Datasets/finetuning/human-pan/val.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/learning_curve/human-pan/sample_full/bromo_val_predictions.tsv \
    --eval_path .

for seed_value in "${seed_values[@]}"; do
    # # # #0.01
    bromo-model predict \
        --model ../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.01/peptide_transformer_full*.pth \
        --test-file ../../Datasets/pretraining/human-pan/val.tsv \
        --max-len 30 \
        --max-charge 4 \
        --out-file ../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.01/bromo_val_predictions.tsv \
        --eval_path .


    # # #0.025
    bromo-model predict \
        --model ../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.025/peptide_transformer_full*.pth \
        --test-file ../../Datasets/pretraining/human-pan/val.tsv \
        --max-len 30 \
        --max-charge 4 \
        --out-file ../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.025/bromo_val_predictions.tsv \
        --eval_path .


    # # #0.05
    bromo-model predict \
        --model ../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.05/peptide_transformer_full*.pth \
        --test-file ../../Datasets/pretraining/human-pan/val.tsv \
        --max-len 30 \
        --max-charge 4 \
        --out-file ../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.05/bromo_val_predictions.tsv \
        --eval_path .



    # #0.1
    bromo-model predict \
        --model ../../ModelCheckpoints/LearningCurves/human-pan/seed0/sample_0.1/peptide_transformer_full_step1100_best.pth \
        --test-file ../../Datasets/pretraining/human-pan/val.tsv \
        --max-len 30 \
        --max-charge 4 \
        --out-file ../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.1/bromo_val_predictions.tsv \
        --eval_path .

    #0.25
    bromo-model predict \
        --model ../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.25/peptide_transformer_full*.pth \
        --test-file ../../Datasets/pretraining/human-pan/val.tsv \
        --max-len 30 \
        --max-charge 4 \
        --out-file ../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.25/bromo_val_predictions.tsv \
        --eval_path .

    #0.5
    bromo-model predict \
        --model ../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.5/peptide_transformer_full*.pth \
        --test-file ../../Datasets/pretraining/human-pan/val.tsv \
        --max-len 30 \
        --max-charge 4 \
        --out-file ../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.5/bromo_val_predictions.tsv \
        --eval_path .

    #0.6
    bromo-model predict \
        --model ../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.6/peptide_transformer_full*.pth \
        --test-file ../../Datasets/pretraining/human-pan/val.tsv \
        --max-len 30 \
        --max-charge 4 \
        --out-file ../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.6/bromo_val_predictions.tsv \
        --eval_path .


    #0.75
    bromo-model predict \
        --model ../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.75/peptide_transformer_full*.pth \
        --test-file ../../Datasets/pretraining/human-pan/val.tsv \
        --max-len 30 \
        --max-charge 4 \
        --out-file ../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.75/bromo_val_predictions.tsv \
        --eval_path .


    #0.9
    bromo-model predict \
        --model ../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.9/peptide_transformer_full*.pth \
        --test-file ../../Datasets/pretraining/human-pan/val.tsv \
        --max-len 30 \
        --max-charge 4 \
        --out-file ../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.9/bromo_val_predictions.tsv \
        --eval_path .

    #0.95
    bromo-model predict \
        --model ../../ModelCheckpoints/LearningCurves/human-pan/${seed_value}/sample_0.95/peptide_transformer_full*.pth \
        --test-file ../../Datasets/pretraining/human-pan/val.tsv \
        --max-len 30 \
        --max-charge 4 \
        --out-file ../../Datasets/learning_curve/human-pan/${seed_value}/sample_0.95/bromo_val_predictions.tsv \
        --eval_path .

