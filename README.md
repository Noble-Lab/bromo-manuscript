# bromo-manuscript

## Pipeline overview

The notebooks are intended to be run in numerical order.
Each notebook has a single, clearly defined responsibility.

### Phase 1: Modality-specific autoencoders  
**`1_Phase1_Train_Autoencoders.ipynb`**

- Train denoising autoencoders independently for each omics modality
- Use feature-level masking to encourage robust reconstruction
- Save modality-specific encoder and decoder checkpoints


### Phase 2: Shared latent space training  
**`2_Phase2_Train_MAE.ipynb`**

- Initialize from pretrained modality-specific autoencoders
- Jointly fine-tune all modalities into a shared latent space
- Optimize a combination of:
  - reconstruction loss
  - contrastive alignment loss
  - cross-modality imputation loss
- Save the trained shared-space model


### Phase 3: Imputation with missing modalities  
**`3_Imputation_Missing_Modality.ipynb`**

- Generate missing-modality imputation results using the shared model
- Evaluate leave-one-modality-out and all modality-availability patterns
- Save scenario definitions and MIMIR predictions
- No benchmarking is performed in this notebook


### Phase 4: Benchmarking missing-modality imputation  
**`4_Benchmark_Missing_Modalities.ipynb`**

- Benchmark MIMIR against TOBMI-style translation and MOFA+
- Use identical missing-modality scenarios for all methods
- Report global and feature-wise reconstruction performance


### Phase 5: Imputation with missing values  
**`5_Imputation_Missing_Values.ipynb`**

- Generate missing-value imputation results using MIMIR
- Consider two missingness mechanisms:
  - MCAR (Missing Completely At Random)
  - MNAR (Missing Not At Random)
- Save masks, corrupted inputs, and predictions
- No baseline comparisons are performed in this notebook


### Phase 6: Benchmarking missing-value imputation  
**`6_Benchmark_Missing_Values.ipynb`**

- Benchmark MIMIR against SoftImpute and KNN-based imputation
- Use identical masks and corrupted inputs for all methods
- Evaluate MCAR and MNAR settings separately

---


## Notes

- Notebooks are intended to be executed sequentially.
- Legacy or exploratory cells are explicitly marked and are not part of the final pipeline.
- All evaluation metrics are computed on held-out test data only.

---

## Citation

If you use this code, please cite the accompanying manuscript .
