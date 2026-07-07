#! /bin/bash

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate bromo_env

bromo-subsample \
    --data_file ../../Datasets/finetuning/human-pan/train.tsv \
    --sample_values 2 3 4 5 6 7 8 9 10 12 15 17 20 \
    --save_path ./suppfig2_human_pan.pdf \
    --max_runs_majorityvoting 4 \
    --alpha 0.05 \
    --seed 42
