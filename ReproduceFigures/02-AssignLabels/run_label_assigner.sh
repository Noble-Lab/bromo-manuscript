#!/bin/bash

# ────────────────────────────────
# HUMAN-ASTRAL
# ────────────────────────────────
python -u assign_labels.py \
  --input_file "../../Datasets/preprocessing/generate_pairs/human-astral/consensus_label.txt" \
  --max_runs_majorityvoting 4 \
  --reverse_fraction 1 \
  --output_dir "../../Datasets/preprocessing/assign_labels/human-astral/"

# ────────────────────────────────
# YEAST-ASTRAL
# ────────────────────────────────
python -u assign_labels.py \
  --input_file "../../Datasets/preprocessing/generate_pairs/yeast-astral/consensus_label.txt" \
  --max_runs_majorityvoting 4 \
  --reverse_fraction 1 \
  --output_dir "../../Datasets/preprocessing/assign_labels/yeast-astral/"

# ────────────────────────────────
# HUMAN-LUMOS
# ────────────────────────────────
python -u assign_labels.py \
  --input_file "../../Datasets/preprocessing/generate_pairs/human-lumos/consensus_label.txt" \
  --max_runs_majorityvoting 4 \
  --reverse_fraction 1 \
  --output_dir "../../Datasets/preprocessing/assign_labels/human-lumos/"

# ────────────────────────────────
# YEAST-LUMOS
# ────────────────────────────────
python -u assign_labels.py \
  --input_file "../../Datasets/preprocessing/generate_pairs/yeast-lumos/consensus_label.txt" \
  --max_runs_majorityvoting 4 \
  --reverse_fraction 1 \
  --output_dir "../../Datasets/preprocessing/assign_labels/yeast-lumos/"

# ────────────────────────────────
# HUMAN-EXPLORIS
# ────────────────────────────────
python -u assign_labels.py \
  --input_file "../../Datasets/preprocessing/generate_pairs/human-exploris/consensus_label.txt" \
  --max_runs_majorityvoting 4 \
  --reverse_fraction 1 \
  --output_dir "../../Datasets/preprocessing/assign_labels/human-exploris/"

# ────────────────────────────────
# YEAST-EXPLORIS
# ────────────────────────────────
python -u assign_labels.py \
  --input_file "../../Datasets/preprocessing/generate_pairs/yeast-exploris/consensus_label.txt" \
  --max_runs_majorityvoting 4 \
  --reverse_fraction 1 \
  --output_dir "../../Datasets/preprocessing/assign_labels/yeast-exploris/"

# ────────────────────────────────
# HUMAN-PAN
# ────────────────────────────────

python -u assign_labels.py \
  --input_file "../../Datasets/preprocessing/generate_pairs/human-pan/consensus_label.txt" \
  --max_runs_majorityvoting 4 \
  --reverse_fraction 1 \
  --output_dir "../../Datasets/preprocessing/assign_labels/human-pan/"
