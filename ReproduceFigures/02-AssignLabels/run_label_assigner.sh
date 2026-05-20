#!/bin/bash

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate bromo_env

# ────────────────────────────────
# HUMAN-ASTRAL
# ────────────────────────────────
bromo-assign-labels \
  --input_file "../../Datasets/preprocessing/generate_pairs/human-astral/consensus_label.txt" \
  --max_runs_majorityvoting 4 \
  --reverse_fraction 1 \
  --output_dir "../../Datasets/preprocessing/assign_labels/human-astral/"

# ────────────────────────────────
# YEAST-ASTRAL
# ────────────────────────────────
bromo-assign-labels \
  --input_file "../../Datasets/preprocessing/generate_pairs/yeast-astral/consensus_label.txt" \
  --max_runs_majorityvoting 4 \
  --reverse_fraction 1 \
  --output_dir "../../Datasets/preprocessing/assign_labels/yeast-astral/"

# ────────────────────────────────
# HUMAN-LUMOS
# ────────────────────────────────
bromo-assign-labels \
  --input_file "../../Datasets/preprocessing/generate_pairs/human-lumos/consensus_label.txt" \
  --max_runs_majorityvoting 4 \
  --reverse_fraction 1 \
  --output_dir "../../Datasets/preprocessing/assign_labels/human-lumos/"

# ────────────────────────────────
# YEAST-LUMOS
# ────────────────────────────────
bromo-assign-labels \
  --input_file "../../Datasets/preprocessing/generate_pairs/yeast-lumos/consensus_label.txt" \
  --max_runs_majorityvoting 4 \
  --reverse_fraction 1 \
  --output_dir "../../Datasets/preprocessing/assign_labels/yeast-lumos/"

# ────────────────────────────────
# HUMAN-EXPLORIS
# ────────────────────────────────
bromo-assign-labels \
  --input_file "../../Datasets/preprocessing/generate_pairs/human-exploris/consensus_label.txt" \
  --max_runs_majorityvoting 4 \
  --reverse_fraction 1 \
  --output_dir "../../Datasets/preprocessing/assign_labels/human-exploris/"

# ────────────────────────────────
# YEAST-EXPLORIS
# ────────────────────────────────
bromo-assign-labels \
  --input_file "../../Datasets/preprocessing/generate_pairs/yeast-exploris/consensus_label.txt" \
  --max_runs_majorityvoting 4 \
  --reverse_fraction 1 \
  --output_dir "../../Datasets/preprocessing/assign_labels/yeast-exploris/"

# ────────────────────────────────
# HUMAN-PAN
# ────────────────────────────────
bromo-assign-labels \
  --input_file "../../Datasets/preprocessing/generate_pairs/human-pan/consensus_label.txt" \
  --max_runs_majorityvoting 4 \
  --reverse_fraction 1 \
  --output_dir "../../Datasets/preprocessing/assign_labels/human-pan/"
