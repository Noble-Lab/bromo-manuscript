#!/bin/bash

## DB Paths
YEAST_DB_PATH="../../Datasets/proteome_fastas/yeast/UP000002311_559292.fasta"
HUMAN_DB_PATH="../../Datasets/proteome_fastas/human/UP000005640_9606.fasta"

### yeast-astral
ASTRAL_YEAST_REPORT_PATH="../../Datasets/preprocessing/diann_outputs/yeast-astral/report.tsv"
SAVE_PATH_ASTRAL_YEAST="../../Datasets/preprocessing/generate_pairs/yeast-astral"
java -jar /net/noble/vol1/home/bwen1/project/2024_ssontha2_ms-targeted-dl/code/carafe-rank-1.0.0/carafe-rank-1.0.0.jar \
  -i "$ASTRAL_YEAST_REPORT_PATH" \
  -db "$YEAST_DB_PATH" \
  -o "$SAVE_PATH_ASTRAL_YEAST" \
  -min_pep_length 7 \
  -max_pep_length 30 \
  -min_pep_charge 2 \
  -max_pep_charge 4 \
  -n 2

### human-astral
ASTRAL_HUMAN_REPORT_PATH="../../Datasets/preprocessing/diann_outputs/human-astral/report.tsv"
SAVE_PATH_ASTRAL_HUMAN="../../Datasets/preprocessing/generate_pairs/human-astral"
java -jar /net/noble/vol1/home/bwen1/project/2024_ssontha2_ms-targeted-dl/code/carafe-rank-1.0.0/carafe-rank-1.0.0.jar \
  -i "$ASTRAL_HUMAN_REPORT_PATH" \
  -db "$HUMAN_DB_PATH" \
  -o "$SAVE_PATH_ASTRAL_HUMAN" \
  -min_pep_length 7 \
  -max_pep_length 30 \
  -min_pep_charge 2 \
  -max_pep_charge 4 \
  -n 2

### yeast-exploris
EXPLORIS_YEAST_REPORT_PATH="../../Datasets/preprocessing/diann_outputs/yeast-exploris/report.tsv"
SAVE_PATH_EXPLORIS_YEAST="../../Datasets/preprocessing/generate_pairs/yeast-exploris"
java -jar /net/noble/vol1/home/bwen1/project/2024_ssontha2_ms-targeted-dl/code/carafe-rank-1.0.0/carafe-rank-1.0.0.jar \
  -i "$EXPLORIS_YEAST_REPORT_PATH" \
  -db "$YEAST_DB_PATH" \
  -o "$SAVE_PATH_EXPLORIS_YEAST" \
  -min_pep_length 7 \
  -max_pep_length 30 \
  -min_pep_charge 2 \
  -max_pep_charge 4 \
  -n 2

### human-exploris
EXPLORIS_HUMAN_REPORT_PATH="../../Datasets/preprocessing/diann_outputs/human-exploris/report.tsv"
SAVE_PATH_EXPLORIS_HUMAN="../../Datasets/preprocessing/generate_pairs/human-exploris"
java -jar /net/noble/vol1/home/bwen1/project/2024_ssontha2_ms-targeted-dl/code/carafe-rank-1.0.0/carafe-rank-1.0.0.jar \
  -i "$EXPLORIS_HUMAN_REPORT_PATH" \
  -db "$HUMAN_DB_PATH" \
  -o "$SAVE_PATH_EXPLORIS_HUMAN" \
  -min_pep_length 7 \
  -max_pep_length 30 \
  -min_pep_charge 2 \
  -max_pep_charge 4 \
  -n 2

### yeast-lumos
LUMOS_YEAST_REPORT_PATH="../../Datasets/preprocessing/diann_outputs/yeast-lumos/report.tsv"
SAVE_PATH_LUMOS_YEAST="../../Datasets/preprocessing/generate_pairs/yeast-lumos"
java -jar /net/noble/vol1/home/bwen1/project/2024_ssontha2_ms-targeted-dl/code/carafe-rank-1.0.0/carafe-rank-1.0.0.jar \
  -i "$LUMOS_YEAST_REPORT_PATH" \
  -db "$YEAST_DB_PATH" \
  -o "$SAVE_PATH_LUMOS_YEAST" \
  -min_pep_length 7 \
  -max_pep_length 30 \
  -min_pep_charge 2 \
  -max_pep_charge 4 \
  -n 2

### human-lumos
LUMOS_HUMAN_REPORT_PATH="../../Datasets/preprocessing/diann_outputs/human-lumos/report.tsv"
SAVE_PATH_LUMOS_HUMAN="../../Datasets/preprocessing/generate_pairs/human-lumos"
java -jar /net/noble/vol1/home/bwen1/project/2024_ssontha2_ms-targeted-dl/code/carafe-rank-1.0.0/carafe-rank-1.0.0.jar \
  -i "$LUMOS_HUMAN_REPORT_PATH" \
  -db "$HUMAN_DB_PATH" \
  -o "$SAVE_PATH_LUMOS_HUMAN" \
  -min_pep_length 7 \
  -max_pep_length 30 \
  -min_pep_charge 2 \
  -max_pep_charge 4 \
  -n 2


### human-pan
CANCER_CELL_LINES_REPORT_PATH="../../Datasets/preprocessing/diann_outputs/human-pan/ProCan-DepMapSanger_DIANN_output.tsv"
SAVE_PATH_CANCER_CELL_LINES_HUMAN="../../Datasets/preprocessing/generate_pairs/human-pan"
java -jar /net/noble/vol1/home/bwen1/project/2024_ssontha2_ms-targeted-dl/code/carafe-rank-1.0.0/carafe-rank-1.0.0.jar \
  -i "$CANCER_CELL_LINES_REPORT_PATH" \
  -db "$HUMAN_DB_PATH" \
  -o "$SAVE_PATH_CANCER_CELL_LINES_HUMAN" \
  -min_pep_length 7 \
  -max_pep_length 30 \
  -min_pep_charge 2 \
  -max_pep_charge 4 \
  -n 2 