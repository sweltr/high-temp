
[![DOI](https://zenodo.org/badge/268354818.svg)](https://zenodo.org/badge/latestdoi/268354818)

This repo contains reproducible workflows for the study *[Warming-induced decline in tropical soil microbial diversity and community-adaptation do not explain increased CO~2~ emission](https://www.nature.com/nmicrobiol/)*, also known as SWELTR.

## Code Availability

To access the code, you have a few options:

1) Visit the project website at https://sweltr.github.io/high-temp/.

2) Clone or download this repo.

3) Visit specific workflow pages and/or download individual R Markdown (.Rmd) files. Details for this option are provided below under **Workflows**.

## Data Availability

For information on all raw data and data products, please see the [Data Availability](https://sweltr.github.io/high-temp/data-availability.html) page. There you will find more details and links to the figshare project site and European Nucleotide Archive project page. Please also check at the bottom of individual workflow pages for access to related data.

## Workflows

You can access each step of the workflows by using the navigation bar at the top of the [SWELTR](https://sweltr.github.io/high-temp/) website or by downloading the R Markdown (.Rmd) files in this repo. Below is a brief description of each workflow, as well as information on how to access the code. Workflows appear in order.

### A. Processing

This section contains three separate workflows for processing and analyzing the 16s rRNA and ITS data sets.

#### No 1. DADA2 Workflow

In this part we go through the steps of processing raw read data including assessing read quality, filtering reads, correcting errors, and inferring amplicon sequence variants (ASVs). Workflows can be found on this [webpage](https://sweltr.github.io/high-temp/dada2.html) or you can download the raw [Rmd file](https://github.com/sweltr/high-temp/blob/main/dada2.Rmd).

#### No 2. Data Preparation

Next we go through the process of defining sample groups, creating phyloseq objects, removing unwanted samples, and removing contaminant ASVs. Various parts of this section can easily be modified to perform different analyses. For example, if you were only interested in a specific group of samples, you could change the code here to create new phyloseq objects. Workflows can be found on this [webpage](https://sweltr.github.io/high-temp/data-prep.html) or you can download the raw [Rmd file](https://github.com/sweltr/high-temp/blob/main/data-prep.Rmd).

#### No 3. Filtering

In this workflow, we apply several different filtering to the FULL 16S rRNA and ITS data sets curated data sets. In [Part A](https://sweltr.github.io/high-temp/filtering.html#a.-arbitrary-filtering), we apply arbitrary filtering,  in [Part B](https://sweltr.github.io/high-temp/filtering.html#b.-perfect-filtering) we use PERFect [(PERmutation Filtering test for microbiome data)](https://github.com/katiasmirn/PERFect) filtering,  and in [Part C](https://sweltr.github.io/high-temp/filtering.html#c.-pime-filtering) of this workflow, we use PIME [(Prevalence Interval for Microbiome Evaluation)](https://github.com/microEcology/pime) filtering. 

### B. Diversity

#### No 4. Taxonomic Diversity

Reproducible workflow for assessing dominant taxonomic groups in the 16S rRNA and ITS data sets. Workflows can be found on this [webpage](https://sweltr.github.io/high-temp/taxa.html) or you can download the raw [Rmd file](https://github.com/sweltr/high-temp/blob/main/taxa.Rmd).

#### No. 5.  Alpha Diversity

This workflow covers the distribution of reads across samples and includes histograms of read counts & rarefaction curves. Also covers estimates of alpha diversity using Hill numbers and includes normality tests, significance tests, & diversity plots. Workflows can be found on this [webpage](https://sweltr.github.io/high-temp/alpha.html) or you can download the raw [Rmd file](https://github.com/sweltr/high-temp/blob/main/alpha.Rmd).

#### No. 6. Beta Diversity

Reproducible workflow for assessing community dissimilarity across temperature treatments.Estimates of beta diversity including significance tests, beta dispersion, and ordination plots.  Workflows can be found on this [webpage](https://sweltr.github.io/high-temp/beta.html) or you can download the raw [Rmd file](https://github.com/sweltr/high-temp/blob/main/beta.Rmd).

#### No. 7. DA ASVs & OTUs

Reproducible workflow to assess differentially abundant ASVs and taxa between temperature treatments using Indicator Species Analysis and linear discriminant analysis (LDA) effect size (LEfSe). The workflow contains code, results, and visualizations. Workflows can be found on this [webpage](https://sweltr.github.io/high-temp/da.html) or you can download the raw [Rmd file](https://github.com/sweltr/high-temp/blob/main/da.Rmd).

#### No. 8. Metadata

This workflow covers Multivariate Analysis  of environmental metadata and community composition. Includes metadata Normality Tests, Normalization, Autocorrelation Tests, Dissimilarity Correlation Tests, Best Subset of Variables, Distance-based Redundancy, and Capscale analysis. Workflows can be found on this [webpage](https://sweltr.github.io/high-temp/metadata.html) or you can download the raw [Rmd file](https://github.com/sweltr/high-temp/blob/main/metadata.Rmd).
