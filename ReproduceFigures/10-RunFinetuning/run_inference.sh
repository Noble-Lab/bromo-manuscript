#! /bin/bash

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate bromo_env


########################################################################################## HUMAN TEST SETS ##########################################################################################
############# human-lumos #############
#trainedfromscratch
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-lumos/peptide_transformer_full_step1200_best.pth \
    --test-file ../../Datasets/finetuning/human-lumos/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-lumos/trainedfromscratch/testset_predictions.tsv \
    --eval_path .

#finetuned
bromo-model predict \
    --model ../../ModelCheckpoints/Finetuned/human-lumos/finetuned/peptide_transformer_full_step3500_best.pth \
    --test-file ../../Datasets/finetuning/human-lumos/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-lumos/finetuned/testset_predictions.tsv \
    --eval_path .

#pretrained
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/finetuning/human-lumos/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-lumos/pretrained/testset_predictions.tsv \
    --eval_path .


############# human-exploris #############
#trainedfromscratch
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-exploris/peptide_transformer_full_step7800_best.pth \
    --test-file ../../Datasets/finetuning/human-exploris/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-exploris/trainedfromscratch/testset_predictions.tsv \
    --eval_path .

#finetuned
bromo-model predict \
    --model ../../ModelCheckpoints/Finetuned/human-exploris/finetuned/peptide_transformer_full_step3800_best.pth \
    --test-file ../../Datasets/finetuning/human-exploris/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-exploris/finetuned/testset_predictions.tsv \
    --eval_path .

#pretrained
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/finetuning/human-exploris/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-exploris/pretrained/testset_predictions.tsv \
    --eval_path .


##### human-pan ######
#trainedfromscratch
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-pan/peptide_transformer_full_step30100_best.pth \
    --test-file ../../Datasets/finetuning/human-pan/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-pan/trainedfromscratch/testset_predictions.tsv \
    --eval_path .

#finetuned
bromo-model predict \
    --model ../../ModelCheckpoints/Finetuned/human-pan/finetuned/peptide_transformer_full_step10400_best.pth \
    --test-file ../../Datasets/finetuning/human-pan/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-pan/finetuned/testset_predictions.tsv \
    --eval_path .

bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/finetuning/human-pan/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-pan/pretrained/testset_predictions.tsv \
    --eval_path .



########################################################################################## YEAST TEST SETS ##########################################################################################

##### yeast-lumos ######
#trainedfromscratch
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/yeast-lumos/peptide_transformer_full_step1900_best.pth \
    --test-file ../../Datasets/finetuning/yeast-lumos/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/yeast-lumos/trainedfromscratch/testset_predictions.tsv \
    --eval_path .

#finetuned
bromo-model predict \
    --model ../../ModelCheckpoints/Finetuned/yeast-lumos/finetuned/peptide_transformer_full_step800_best.pth \
    --test-file ../../Datasets/finetuning/yeast-lumos/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/yeast-lumos/finetuned/testset_predictions.tsv \
    --eval_path .

#pretrained
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/yeast-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/finetuning/yeast-lumos/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/yeast-lumos/pretrained/testset_predictions.tsv \
    --eval_path .


############# yeast-exploris #############
#trainedfromscratch
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/yeast-exploris/peptide_transformer_full_step11700_best.pth \
    --test-file ../../Datasets/finetuning/yeast-exploris/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/yeast-exploris/trainedfromscratch/testset_predictions.tsv \
    --eval_path .

#finetuned
bromo-model predict \
    --model ../../ModelCheckpoints/Finetuned/yeast-exploris/finetuned/peptide_transformer_full_step5000_best.pth \
    --test-file ../../Datasets/finetuning/yeast-exploris/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/yeast-exploris/finetuned/testset_predictions.tsv \
    --eval_path .

#pretrained
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/yeast-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/finetuning/yeast-exploris/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/yeast-exploris/pretrained/testset_predictions.tsv \
    --eval_path .
