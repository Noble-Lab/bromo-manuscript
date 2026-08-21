# bromo-manuscript

Code to reproduce all figures from the Bromo manuscript. Bromo is a transformer-based model for predicting peptide detectability in data-independent acquisition (DIA) mass spectrometry.

## Requirements

- Conda environment: `bromo_env` (contains the `bromo-model`, `bromo-xgboost`, `bromo-assign-labels`, and `bromo-subsample` CLI tools)
- `carafe-rank-1.0.0.jar` (used in step 01)

To reproduce all the analysis and figures, you will need to pip install the bromo package. Instrucrtions for this are in the main bromo repo [https://github.com/Noble-Lab/bromo].

## Data and model checkpoints

All datasets and pretrained/finetuned model checkpoints are available on Zenodo:
https://zenodo.org/records/20367457

Download and place them under `Datasets/` and `ModelCheckpoints/` respectively. See [`Datasets/readme.md`](Datasets/readme.md) and [`ModelCheckpoints/readme.md`](ModelCheckpoints/readme.md) for details.

The seven dataset configurations used throughout are:

| Name | Organism | Instrument |
|------|----------|------------|
| human-astral | Human | Astral |
| human-exploris | Human | Exploris |
| human-lumos | Human | Lumos |
| human-pan | Human | TripleTOF (ProCan-DepMapSanger) |
| yeast-astral | Yeast | Astral |
| yeast-exploris | Yeast | Exploris |
| yeast-lumos | Yeast | Lumos |

---

## Pipeline overview

Steps are numbered and must be run in order. Steps ending in a shell script are run from the command line; steps ending in a notebook are opened in Jupyter.

### Step 01 — Generate peptide pairs
**`ReproduceFigures/01-GeneratePairs/generate_pair_data.sh`**

Runs `carafe-rank` on each DIA-NN report TSV to generate ranked peptide pairs for all seven datasets. Outputs land in `Datasets/preprocessing/generate_pairs/<dataset>/`.

### Step 02 — Assign detectability labels
**`ReproduceFigures/02-AssignLabels/run_label_assigner.sh`**

Runs `bromo-assign-labels` on each dataset using majority voting (up to 4 runs, 1× reverse fraction). Produces `consensus_label_corrected.tsv` files under `Datasets/preprocessing/assign_labels/<dataset>/`.

### Step 03 — Pretrain Bromo and run zero-shot inference
**`ReproduceFigures/03-PretrainBromoAndRunInference/run_traininginference_base.sh`**

Trains the Bromo transformer on the human-astral dataset (15 epochs, batch size 4096, lr 1e-4). Then runs zero-shot inference with this pretrained model across all seven datasets. Outputs predictions to `Datasets/inference/<dataset>/`.

### Step 04 — Train XGBoost baseline and run inference
**`ReproduceFigures/04-TrainXGBoostBaselineAndRunInference/run_xgboost.sh`**

Trains an XGBoost baseline on human-astral and runs inference across all datasets, mirroring step 03.

### Step 05 — Plot Figure 2ABC
**`ReproduceFigures/05-PlotFigure2ABC/fig2abc_builder.ipynb`**

Produces panels 2a (Astral), 2b (Exploris), 2c (Lumos) comparing Bromo predictions on held-out human test sets.

### Step 06 — Plot Supplement Figure 1
**`ReproduceFigures/06-PlotSuppFig1/suppfig1_builder.ipynb`**

Produces panels S1a (Astral), S1b (Exploris), S1c (Lumos), which plots TKA at k=3 as a function of # of peptides per protein.

### Step 07 — Prego and PeptideRanger baselines
**`ReproduceFigures/07-PregoPeptideRangerBaselines/run_prego.sh`** 
**`ReproduceFigures/07-PregoPeptideRangerBaselines/run_peptideranger.R`**

Runs Prego and PeptideRanger baselines on various datasets. 

### Step 08 — Plot Figure 2DEF
**`ReproduceFigures/08-PlotFigure2DEF/fig2def_builder.ipynb`**

Produces panels 2d–2f showing max-peptide detectability analysis across instruments.

### Step 09 — Plot Figure 2GHI
**`ReproduceFigures/09-PlotFigure2GHI/figure2ghi_builder.ipynb`**

Produces panels 2g (Bromo), 2h (PREGO), 2i (PeptideRanger), benchmarking Bromo against existing tools.

### Step 10 — Plot Figure 3
**`ReproduceFigures/10-PlotFigure3/fig3_builder.ipynb`**

Produces Figure 3 panels showing cross-instrument generalization: Bromo trained on one instrument evaluated on others (Exploris, Lumos, Astral, pan-cancer).

### Step 11 — Fine-tune Bromo and run inference
**`ReproduceFigures/11-RunFinetuning/run_finetuning.sh`**
**`ReproduceFigures/11-RunFinetuning/run_inference.sh`**

`run_finetuning.sh` does two things:
- Trains Bromo **from scratch** on human-lumos, human-exploris, human-pan, yeast-lumos, and yeast-exploris
- Fine-tunes the human-astral pretrained model on these datasets (5 epochs, lr 1e-5).

`run_inference.sh` then runs all three conditions (pretrained, trained-from-scratch, finetuned) on each dataset's held-out test set.

### Step 12 — Plot Figure 4
**`ReproduceFigures/12-PlotFigure4/fig4_builder.ipynb`**

Produces Figure 4 comparing pretrained, trained-from-scratch, and finetuned Bromo across human and yeast datasets on multiple instruments.

### Step 13 — Learning curves
**`ReproduceFigures/13-LearningCurves/human-astral/`**
**`ReproduceFigures/13-LearningCurves/human-pan/`**

Each directory contains scripts to:
1. Train Bromo at 10 data fractions (1%–95%) with 5 random seeds (`run_training_learningcurve.sh`)
2. Run predictions on the validation set for each checkpoint (`run_predictions.sh`)
3. Train and run XGBoost at each fraction for comparison (`run_xgboost.sh`, `run_predictions_xgboost.sh`)
4. Run TKA baseline (`run_tka.sh`)

### Step 14 — Plot Figure 5
**`ReproduceFigures/14-PlotFigure5/fig5_builder.ipynb`**

Produces Figure 5 learning curve plots for human-astral and human-pan.

### Step 15 — Run subsampling and plot supplementary Figure 6
**`ReproduceFigures/15-RunSubsamplingAndPlotSuppFig2/run_subsample_runs.sh`**

Runs `bromo-subsample` on the human-pan training set across 13 sample sizes (2–20 runs) to quantify the effect of the number of LC-MS/MS runs on label quality. Produces `suppfig2_human_pan.pdf` directly.

### Step 16 — Benchmark runtime and GPU/CPU usage
**`ReproduceFigures/16-BenchmarkRuntime/gpu/run_runtime_benchmark.sh`**

Runs inference on various subsampled dataset sizes and plots runtime and reports maximum GPU and CPU memory usage.

---

## Citation

If you use this code, please cite the accompanying manuscript.


Prioritizing peptides for targeted mass spectrometry experiments using deep learning
Shreyash Sonthalia, Priank Dasgupta, Chris Hsu, Bo Wen, Michael J. MacCoss, William Stafford Noble
bioRxiv 2026.05.21.727053; doi: https://doi.org/10.64898/2026.05.21.727053

