#! /bin/bash

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate bromo_env

export PYTHONUNBUFFERED=1

########################################################################################## HUMAN TEST SETS ##########################################################################################
############# human-lumos #############
#trainedfromscratch
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-lumos/peptide_transformer_state_step5800_best.pth \
    --test-file ../../Datasets/finetuning/human-lumos/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-lumos/trainedfromscratch/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Pretrained/bromo/human-lumos/model_config.json

#finetuned
bromo-model predict \
    --model ../../ModelCheckpoints/Finetuned/human-lumos/peptide_transformer_state_step500_best.pth \
    --test-file ../../Datasets/finetuning/human-lumos/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-lumos/finetuned/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Finetuned/human-lumos/model_config.json

#pretrained
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/finetuning/human-lumos/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-lumos/pretrained/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Pretrained/bromo/human-lumos/model_config.json


############# human-exploris #############
#trainedfromscratch
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-exploris/peptide_transformer_state_step5800_best.pth \
    --test-file ../../Datasets/finetuning/human-exploris/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-exploris/trainedfromscratch/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Pretrained/bromo/human-exploris/model_config.json

#finetuned
bromo-model predict \
    --model ../../ModelCheckpoints/Finetuned/human-exploris/peptide_transformer_state_step700_best.pth \
    --test-file ../../Datasets/finetuning/human-exploris/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-exploris/finetuned/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Finetuned/human-exploris/model_config.json

#pretrained
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/finetuning/human-exploris/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-exploris/pretrained/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Pretrained/bromo/human-astral/model_config.json


############# human-pan #############
#trainedfromscratch
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-pan/peptide_transformer_state_step10200_best.pth \
    --test-file ../../Datasets/finetuning/human-pan/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-pan/trainedfromscratch/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Pretrained/bromo/human-pan/model_config.json

#finetuned
bromo-model predict \
    --model ../../ModelCheckpoints/Finetuned/human-pan/peptide_transformer_state_step1900_best.pth \
    --test-file ../../Datasets/finetuning/human-pan/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-pan/finetuned/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Finetuned/human-pan/model_config.json

bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/finetuning/human-pan/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/human-pan/pretrained/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Pretrained/bromo/human-astral/model_config.json



########################################################################################## YEAST TEST SETS ##########################################################################################

############# yeast-lumos #############
#trainedfromscratch
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/yeast-lumos/peptide_transformer_state_step5000_best.pth \
    --test-file ../../Datasets/finetuning/yeast-lumos/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/yeast-lumos/trainedfromscratch/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Pretrained/bromo/yeast-lumos/model_config.json

#finetuned
bromo-model predict \
    --model ../../ModelCheckpoints/Finetuned/yeast-lumos/peptide_transformer_state_step300_best.pth \
    --test-file ../../Datasets/finetuning/yeast-lumos/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/yeast-lumos/finetuned/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Finetuned/yeast-lumos/model_config.json

#pretrained
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/finetuning/yeast-lumos/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/yeast-lumos/pretrained/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Pretrained/bromo/human-astral/model_config.json


############# yeast-exploris #############
#trainedfromscratch
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/yeast-exploris/peptide_transformer_state_step4600_best.pth \
    --test-file ../../Datasets/finetuning/yeast-exploris/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/yeast-exploris/trainedfromscratch/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Pretrained/bromo/yeast-exploris/model_config.json

#finetuned
bromo-model predict \
    --model ../../ModelCheckpoints/Finetuned/yeast-exploris/peptide_transformer_state_step400_best.pth \
    --test-file ../../Datasets/finetuning/yeast-exploris/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/yeast-exploris/finetuned/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Finetuned/yeast-exploris/model_config.json

#pretrained
bromo-model predict \
    --model ../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --test-file ../../Datasets/finetuning/yeast-exploris/test.tsv \
    --max-len 30 \
    --max-charge 4 \
    --out-file ../../Datasets/finetuning/yeast-exploris/pretrained/testset_predictions.tsv \
    --load_config ../../ModelCheckpoints/Pretrained/bromo/human-astral/model_config.json
