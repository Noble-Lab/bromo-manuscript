library(dplyr)
library(PeptideRanger)
novel_peptidome <- create_peptidome(proteome_dir = "../../Datasets/proteome_fastas/human/UP000005640_9606.fasta",
                                    missed_cleavages = c(0,0),
                                    synth_peps = FALSE,
                                    aa_range = c(7,30))

novel_peptidome$uniprot %>% unique -> target_proteins
prioritized_peptides <- prioritize_peptides(uniprot_list = target_proteins,
                                            max_n = 20,
                                            peptidome = novel_peptidome,
                                            prediction_model = RFmodel_ProteomicsDB,
                                            priorities = "RF_score",
                                            priority_thresholds = 0)
readr::write_tsv(prioritized_peptides,file = "../../Datasets/external_baselines/human/peptideranger/prioritized_peptides.tsv")


library(dplyr)
library(PeptideRanger)
novel_peptidome <- create_peptidome(proteome_dir = "../../Datasets/proteome_fastas/yeast/UP000002311_559292.fasta",
                                    missed_cleavages = c(0,0),
                                    synth_peps = FALSE,
                                    aa_range = c(7,30))

novel_peptidome$uniprot %>% unique -> target_proteins
prioritized_peptides <- prioritize_peptides(uniprot_list = target_proteins,
                                            max_n = 20,
                                            peptidome = novel_peptidome,
                                            prediction_model = RFmodel_ProteomicsDB,
                                            priorities = "RF_score",
                                            priority_thresholds = 0)
readr::write_tsv(prioritized_peptides,file = "../../Datasets/external_baselines/yeast/peptideranger/UP000002311_559292_prioritized_peptides.tsv")