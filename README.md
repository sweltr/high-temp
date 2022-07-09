
[![DOI](https://zenodo.org/badge/368915237.svg)](https://zenodo.org/badge/latestdoi/368915237)

This repo contains reproducible workflows for the study *[Microbial diversity decline and community response are decoupled from increased respiration in warmed tropical forest soil](https://www.nature.com/nmicrobiol/)*.

## Code Availability

To access the code, you have a few options:

1) Visit the project website at https://sweltr.github.io/high-temp/.

2) Clone or download this repo.

3) Visit specific workflow pages and/or download individual Quarto (`.qmd`) files. Details for this option are provided below under **Workflows**.

## Data Availability

For information on all raw data and data products, please see the [Data Availability](https://sweltr.github.io/high-temp/data-availability.html) page. There you will find more details and links to the figshare project site and European Nucleotide Archive project page. Please also check at the bottom of individual workflow pages for access to related data.

## Publication 

The website contains information related to the publication. This includes a HTML version of the [Electronic Supplementary Material](https://sweltr.github.io/high-temp/som.html) and workflows to reproduce all of the figures in the paper, specifically from the [Main paper](https://sweltr.github.io/high-temp/pub.html#main-paper), [Extended Data section](https://sweltr.github.io/high-temp/pub.html#extended-data), and [Supplementary Material](https://sweltr.github.io/high-temp/pub.html#supplementary-material). 

## Workflows

You can access each step of the workflows by using the navigation bar at the top of the [SWELTR](https://sweltr.github.io/high-temp/) website or by downloading the Quarto (.qmd) files in this repo. Below is a brief description of each workflow, as well as information on how to access the code. Workflows appear in order.

### A. Processing

This section contains three separate workflows for processing and analyzing the 16s rRNA and ITS data sets.

#### No 1. DADA2 Workflow

In this part we go through the steps of processing raw read data including assessing read quality, filtering reads, correcting errors, and inferring amplicon sequence variants (ASVs). Workflows can be found on this [webpage](https://sweltr.github.io/high-temp/dada2.html) or you can download the raw [qmd file](https://github.com/sweltr/high-temp/blob/main/dada2.qmd).

#### No 2. Data Preparation

Next we go through the process of defining sample groups, creating phyloseq objects, removing unwanted samples, and removing contaminant ASVs. Various parts of this section can easily be modified to perform different analyses. For example, if you were only interested in a specific group of samples, you could change the code here to create new phyloseq objects. Workflows can be found on this [webpage](https://sweltr.github.io/high-temp/data-prep.html) or you can download the raw [qmd file](https://github.com/sweltr/high-temp/blob/main/data-prep.qmd).

#### No 3. Filtering

In this workflow, we apply several different filtering to the FULL 16S rRNA and ITS data sets curated data sets. In [Part A](https://sweltr.github.io/high-temp/filtering.html#a.-arbitrary-filtering), we apply arbitrary filtering,  in [Part B](https://sweltr.github.io/high-temp/filtering.html#b.-perfect-filtering) we use PERFect [(PERmutation Filtering test for microbiome data)](https://github.com/katiasmirn/PERFect) filtering,  and in [Part C](https://sweltr.github.io/high-temp/filtering.html#c.-pime-filtering) of this workflow, we use PIME [(Prevalence Interval for Microbiome Evaluation)](https://github.com/microEcology/pime) filtering. 

### B. Diversity

#### No 4. Taxonomic Diversity

Reproducible workflow for assessing dominant taxonomic groups in the 16S rRNA and ITS data sets. Workflows can be found on this [webpage](https://sweltr.github.io/high-temp/taxa.html) or you can download the raw [qmd file](https://github.com/sweltr/high-temp/blob/main/taxa.qmd).

#### No. 5.  Alpha Diversity

This workflow covers the distribution of reads across samples and includes histograms of read counts & rarefaction curves. Also covers estimates of alpha diversity using Hill numbers and includes normality tests, significance tests, & diversity plots. Workflows can be found on this [webpage](https://sweltr.github.io/high-temp/alpha.html) or you can download the raw [qmd file](https://github.com/sweltr/high-temp/blob/main/alpha.qmd).

#### No. 6. Beta Diversity

Reproducible workflow for assessing community dissimilarity across temperature treatments.Estimates of beta diversity including significance tests, beta dispersion, and ordination plots.  Workflows can be found on this [webpage](https://sweltr.github.io/high-temp/beta.html) or you can download the raw [qmd file](https://github.com/sweltr/high-temp/blob/main/beta.qmd).

#### No. 7. DA ASVs & OTUs

Reproducible workflow to assess differentially abundant ASVs and taxa between temperature treatments using Indicator Species Analysis and linear discriminant analysis (LDA) effect size (LEfSe). The workflow contains code, results, and visualizations. Workflows can be found on this [webpage](https://sweltr.github.io/high-temp/da.html) or you can download the raw [qmd file](https://github.com/sweltr/high-temp/blob/main/da.qmd).

#### No. 8. Metadata

This workflow covers Multivariate Analysis  of environmental metadata and community composition. Includes metadata Normality Tests, Normalization, Autocorrelation Tests, Dissimilarity Correlation Tests, Best Subset of Variables, Distance-based Redundancy, and Capscale analysis. Workflows can be found on this [webpage](https://sweltr.github.io/high-temp/metadata.html) or you can download the raw [qmd file](https://github.com/sweltr/high-temp/blob/main/metadata.qmd).
