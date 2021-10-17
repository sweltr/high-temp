## Table captions
caption_tab("seq_dets_ssu", "Sample data & associated sequencing information.")
caption_tab("seq_cutadapt_ssu", "Total reads per sample after prefiltering and primer removal (using cutadapt).")
caption_tab("filter_ssu", "Total reads per sample after filtering.")
caption_tab("pooling_summary_ssu", "Total number of reads, total number of ASVs, minimum and maximum ASVs, followed by the number of singletons, doubletons, etc. for pooling options.")
caption_tab("pooling_ssu", "Total number of reads and ASVs by sample for pooling options.")
caption_tab("track_ssu", "Tracking reads changes at each step of the DADA2 workflow.")
#<small>`r caption_tab("qual_scores_after_ssu")`</small>

## Figure captions
caption_fig("qual_scores_ssu", "Aggregated quality score plots for forward (left) & reverse (right) reads.")
caption_fig("qual_scores_after_ssu", "Aggregated quality score plot for forward reads after prefilter & primer removal.")
caption_fig("error_F_ssu", "Forward reads: Observed frequency of each transition (e.g., T -> G) as a function of the associated quality score.")
caption_fig("read_length_ssu", "Distribution of read length by total ASVs before removing extreme length variants.")
