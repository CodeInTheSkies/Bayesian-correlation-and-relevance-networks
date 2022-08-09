% Matlab script demonstrating computation of Bayesian and Pearson
% correlations, as well as permutation-based null distributions.

% ReadCounts describes the reads attributed to m=5 entities across 12
% conditions, comprising 7 groups of conditions (as specified in the Groups
% variable).
ReadCounts = [...
    10  13  12  30  35  25  19  20  22  100 110 106
    400 300 350 90  100 92  16  14  12  33  40  35
    100 110 120 300 333 290 200 225 212 800 810 820
    900 920 919 200 210 211 50  60  55  65  70  75
    0   0   0   0   0   0   0   0   0   0   0   1
    0   0   0   0   0   0   0   0   0   0   0   2
    1   2   3   4   5   6   7   8   9   10  11  12];
Groups = [1 1 1 2 2 2 3 3 3 4 4 4];

% Bayesian correlations
BCorr = BayesianCorrelation_Grouped(ReadCounts,Groups);

% Permuted Bayesian correlations
BPerm = BayesianPermutation_Grouped(ReadCounts,Groups,100);

% False discovery rate analysis
BFDR = FDRAnalysis(BCorr,BPerm);

% Suppose we choose a correlation threshold of 0.8, the following would be
% the links in the Bayesian Relevance Network.
[BI,BJ] = find(BCorr>=0.8);
K = find(BJ>BI);
BI = BI(K);
BJ = BJ(K);


% Pearson correlations
PCorr = PearsonCorrelation_Grouped(ReadCounts,Groups);

% Permuted Pearson correlations
PPerm = PearsonPermutation_Grouped(ReadCounts,Groups,100);

% False discovery rate analysis
PFDR = FDRAnalysis(PCorr,PPerm);

% Suppose we choose a correlation threshold of 0.8, the following would be
% the links in the Pearson Relevance Network.
[PI,PJ] = find(PCorr>=0.8);
K = find(PJ>PI);
PI = PI(K);
PJ = PJ(K);



    