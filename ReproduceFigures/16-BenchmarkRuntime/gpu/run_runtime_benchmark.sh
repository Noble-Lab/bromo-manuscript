
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate bromo_env

bromo-benchmark \
    --pairs_file ../../../Datasets/pretraining/human-astral/test.tsv \
    --bromo_model ../../../ModelCheckpoints/Pretrained/bromo/human-astral/peptide_transformer_state_step25700_best.pth \
    --load_config ../../../ModelCheckpoints/Pretrained/bromo/human-astral/model_config.json \
    --xgb_model ../../../ModelCheckpoints/Pretrained/xgboost/human-astral/xgboost_model.json \
    --xgb_mode single \
    --add_terminal \
    --out_dir ./benchmark_results