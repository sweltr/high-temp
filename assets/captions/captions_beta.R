## Table captions
## Summary
caption_tab_ssu("ssu_beta_disp_tests", "Summary of Beta Dispersion Tests for unfiltered & filtered data sets against various distance metrics. The `test` column shows the method chosen (based on the test results) to assess differences in beta diversity. If p-values are significant (red, p-value < 0.05) we used ANOSIM, otherwise we used PERMANOVA (blue, p-value > 0.05).")
caption_tab_ssu("ssu_sign_tests", "Summary of significant tests for the unfiltered & filtered data sets. P-values in red indicate significant differences (p-value < 0.05).")

caption_tab_its("its_beta_disp_tests", "Summary of Beta Dispersion Tests for unfiltered & filtered data sets against various distance metrics. The `test` column shows the method chosen (based on the test results) to assess differences in beta diversity. If p-values are significant (red, p-value < 0.05) we used ANOSIM, otherwise we used PERMANOVA (blue, p-value > 0.05).")
caption_tab_its("its_sign_tests", "Summary of significant tests for the unfiltered & filtered data sets. P-values in red indicate significant differences (p-value < 0.05).")
#<small>`r caption_tab_ssu("qual_scores_after_ssu")`</small>

## Figure captions
caption_fig_ssu("ssu_beta_div_plots_full", "PCoA ordination plots of the FULL data set. Top = phyloseq, bottom = microeco; Left = Jensen-Shannon Divergence, middle = UniFrac (unwieghted), right = UniFrac (wieghted).")
caption_fig_ssu("ssu_beta_div_plots_filt", "PCoA ordination plots of the Arbitrary filtered data set. Top = phyloseq, bottom = microeco; Left = Jensen-Shannon Divergence, middle = UniFrac (unwieghted), right = UniFrac (wieghted).")
caption_fig_ssu("ssu_beta_div_plots_perfect", "PCoA ordination plots of the PERfect filtered data set. Top = phyloseq, bottom = microeco; Left = Jensen-Shannon Divergence, middle = UniFrac (unwieghted), right = UniFrac (wieghted).")
caption_fig_ssu("ssu_beta_div_plots_pime", "PCoA ordination plots of the PIME filtered data set. Top = phyloseq, bottom = microeco; Left = Jensen-Shannon Divergence, middle = UniFrac (unwieghted), right = UniFrac (wieghted).")

caption_fig_ssu("ssu_variation_plots_full", "Within (top) and between (bottom) group variation plots of the FULL data set. Left = Jensen-Shannon Divergence, middle = UniFrac (unwieghted), right = UniFrac (wieghted). Significant differences denoted by asterisks (\\* p < 0.05, \\*\\* p < 0.01, \\*\\*\\* p < 0.001, \\*\\*\\*\\* p < 0.0001). ns = not significant. ")
caption_fig_ssu("ssu_variation_plots_filt", "Within (top) and between (bottom) group variation plots of the Arbitrary filtered data set. Left = Jensen-Shannon Divergence, middle = UniFrac (unwieghted), right = UniFrac (wieghted). Significant differences denoted by asterisks (\\* p < 0.05, \\*\\* p < 0.01, \\*\\*\\* p < 0.001, \\*\\*\\*\\* p < 0.0001). ns = not significant. ")
caption_fig_ssu("ssu_variation_plots_perfect", "Within (top) and between (bottom) group variation plots of the PERfect filtered data set. Left = Jensen-Shannon Divergence, middle = UniFrac (unwieghted), right = UniFrac (wieghted). Significant differences denoted by asterisks (\\* p < 0.05, \\*\\* p < 0.01, \\*\\*\\* p < 0.001, \\*\\*\\*\\* p < 0.0001). ns = not significant. ")
caption_fig_ssu("ssu_variation_plots_pime", "Within (top) and between (bottom) group variation plots of the PIME filtered data set. Left = Jensen-Shannon Divergence, middle = UniFrac (unwieghted), right = UniFrac (wieghted). Significant differences denoted by asterisks (\\* p < 0.05, \\*\\* p < 0.01, \\*\\*\\* p < 0.001, \\*\\*\\*\\* p < 0.0001). ns = not significant. ")

caption_fig_its("its_beta_div_plots_full", "PCoA ordination plots of the FULL data set. Top = phyloseq, bottom = microeco; Left = Jensen-Shannon Divergence, middle = Bray-Curtis dissimilarity, right = Gower distance.")
caption_fig_its("its_beta_div_plots_filt", "PCoA ordination plots of the Arbitrary filtered data set. Top = phyloseq, bottom = microeco; Left = Jensen-Shannon Divergence, middle = Bray-Curtis dissimilarity, right = Gower distance.")
caption_fig_its("its_beta_div_plots_perfect", "PCoA ordination plots of the PERfect filtered data set. Top = phyloseq, bottom = microeco; Left = Jensen-Shannon Divergence, middle = Bray-Curtis dissimilarity, right = Gower distance.")
caption_fig_its("its_beta_div_plots_pime", "PCoA ordination plots of the PIME filtered data set. Top = phyloseq, bottom = microeco; Left = Jensen-Shannon Divergence, middle = Bray-Curtis dissimilarity, right = Gower distance.")

caption_fig_its("its_variation_plots_full", "Within (top) and between (bottom) group variation plots of the FULL data set. Left = Jensen-Shannon Divergence, middle = Bray-Curtis dissimilarity, right = Gower distance. Significant differences denoted by asterisks (\\* p < 0.05, \\*\\* p < 0.01, \\*\\*\\* p < 0.001, \\*\\*\\*\\* p < 0.0001). ns = not significant. ")
caption_fig_its("its_variation_plots_filt", "Within (top) and between (bottom) group variation plots of the Arbitrary filtered data set. Left = Jensen-Shannon Divergence, middle = Bray-Curtis dissimilarity, right = Gower distance. Significant differences denoted by asterisks (\\* p < 0.05, \\*\\* p < 0.01, \\*\\*\\* p < 0.001, \\*\\*\\*\\* p < 0.0001). ns = not significant. ")
caption_fig_its("its_variation_plots_perfect", "Within (top) and between (bottom) group variation plots of the PERfect filtered data set. Left = Jensen-Shannon Divergence, middle = Bray-Curtis dissimilarity, right = Gower distance. Significant differences denoted by asterisks (\\* p < 0.05, \\*\\* p < 0.01, \\*\\*\\* p < 0.001, \\*\\*\\*\\* p < 0.0001). ns = not significant. ")
caption_fig_its("its_variation_plots_pime", "Within (top) and between (bottom) group variation plots of the PIME filtered data set. Left = Jensen-Shannon Divergence, middle = Bray-Curtis dissimilarity, right = Gower distance. Significant differences denoted by asterisks (\\* p < 0.05, \\*\\* p < 0.01, \\*\\*\\* p < 0.001, \\*\\*\\*\\* p < 0.0001). ns = not significant. ")


#<small>`r caption_fig_ssu("ssu_alpha_div_plots")`</small>
