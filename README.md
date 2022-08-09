## Bayesian correlation and relevance networks

#### New methods for high-throughput sequencing data analysis using Bayesian statistics

This repo contains a set of R and Matlab scripts to accompany the following two related publications:

### Publication 1

- [Bayesian Correlation Analysis for Sequence Count Data](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0163595), _PLoS ONE_, 2016

  The code for this paper is in [BayesianCorrelation.R](/BayesianCorrelation.R)

  To use, simply 'source' the file, and then run whichever functions you like on the data. The first function allows you to specify your own condition-specific   priors, while the subsequent functions implement the three priors described in the paper.

### Publication 2

- [Uncovering robust patterns of microRNA co-expression across cancers using Bayesian Relevance Networks](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0183103), _PLoS ONE_, 2017

  All scripts pertaining to this paper are in the folder [BayesianRelevanceNetworks](/BayesianRelevanceNetworks)

  #### R version
  
  This R source code is in support of the publication "Uncovering Robust Patterns of MicroRNA Co-Expression across Cancers using Bayesian Relevance Networks" by Ramachandran, Sanchez-Taltavull, and Perkins, PLoS ONE, Vol. 12, No. 8, Art. e0183103 (also appeared at GLBIO 2017, where it won "Outstanding Presentation" prize).

Sourcing the R code will provide for you five functions: BayesianCorrelation_Grouped, BayesianPermutation_Grouped, PearsonCorrelation_Grouped and PearsonPermutation_Grouped, and FDRAnalysis.

The first and third functions are different ways of computing correlations between different entities in a count matrix from a set of sequencing experiments. Typically, these entities would be genes or microRNAs whose expression is assessed by RNA-seq or single-cell RNA-seq. But they could be other things as well. The second and fourth functions are ways of estimating a null distribution of correlations under the hypothesis of no true correlation. The final function calcultes empirical false discovery rates, based on the outputs of the first and second functions, or the second and third functions.

The basic steps of a complete analysis are to 1) Compute Bayesian (or Pearson) correlations between entities (genes, microRNAs, etc.), 2) Compute a null distribution of those correlations by permuting the data, and 3) threshold the correlations based on the permuted distribution and a desired false discovery rate threshold.

  #### Matlab version
  
  
