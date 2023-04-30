---
title: ML Dos and Don'ts
separator: '----'
verticalSeparator: '---'
highlightTheme: ir-blood
typora-copy-images-to: ./assets_files
revealOptions:
    transition: 'slide'
	transitionSpeed: 'slow'
---

<small>D. Arp, E. Quiring, F. Pendlebury, A. Warnecke, F. Pierazzi, C. Wressnegger, L. Cavallaro, and K. Rieck:</small>

<h2>Dos and Don'ts of Machine Learning in Computer Security</h2>

<small>USENIX 2022</small>

## outline

- identifying 10 pitfalls of ML in *security domain*
- prevalence in 30 top-tier conference papers
- impact evaluation in 4 selected studies


# <div />

<h2>pitfall identification</h2>

| <small>data collection</small> | <small>system design</small> | <small>performance evaluation</small> | <small>operation</small> |
| -- | -- | -- | -- |
| <small>sampling bias</small> | <small>data snooping</small> | <small>inappropriate baselines</small> | <small>lab-only evaluation</small> |
| <small>label inaccuracies</small> | <small>spurious correlations</small> | <small>inappropriate measures</small> | <small>inappropriate threat model</small> |
| | <small>biased parameters</small> | <small>base rate fallacy</small> | |

## <div />

<h1>data collection and labeling</h1>

## sampling bias

- P: collected data don't represent true distribution
- S1: different estimates of the true distributions

## label inaccuracies

- P: ground-truth labels are inaccurate
- S1: use models robust to noisy labels
- S2: model the label noise in the training data
- S3: use label cleansing techniques


## <div />

<h1>system design and learning</h1>

## data snooping

- P: the model is trained with unavailable data
- S (test): split the test set early
- S (temporal): consider temporal origin of data
- S (selective): report when dropping any samples

## spurious correlations

- P: learning shortcut patterns in the data
- S: explainable AI

## biased parameter

- P: parameters are estimated using the test set
- S: use validation and test sets

## <div />

<h1>performance evaluation</h1>

## inappropriate baseline

- P: evaluation with limited or no SOTA baseline
- S1: consider simple models - easy to explain, scalable
- S2: consider non-learning approaches

## inappropriate performance measures

- P: inappropriate measures of performance
- S1: help practicioners understand the assessment
- S2: account for imbalanced and multiclass datasets
- S3: avoid over-aggregated metrics

## base rate fallacy

- P: class imbalance is ignored during interpretation
- S1: use precision and recall
  - misleading in a presence of sampling bias
- S2: ROC value at tractable FP rate
- S3: report negatives' prevalence alongside FP rate


## <div />

<h1>deployment and operation</h1>

## lab-only evaluation

- P: perform experiments under strong assumptions
- S1: consider the real-world dynamics
  - temporal and spatial relations
- S2: consider the real-world limitations
  - runtime, storage

## inappropriate threat model

- P: not considering adversarial / adaptive attacks
- S:

# <div />

<h2>prevalence analysis</h2>

- reviews of papers w.r.t pitfalls
  - CCS, S&P, USENIX, NDSS
- survey of the paper authors

## paper review

- 2 reviewers evaluating prevalence
- 1 reviewer resolving disputes
- protocol for evaluation
  - present / partly present / not present
  - pitfall discussed?

## pitfalls by prevalence

1. Sampling bias (18/30)
2. Data snooping (17/30)
3. Lab-only evaluation (14/30)

...

## author survey

- 135 authors
- survey with 3 questions (Likert)
  - Your publication might be affected.
  - The pitfall frequently occurs.
  - It is easy to avoid the pitfall.

## author survey

| <small>**question**</small> | <small>**task**</small> | <small>**prevalence**</small> |
|-|-|-|
| <small>The pitfall frequently occurs.</small> | <small>*lab-only evalutation*</small> | <small>$92\\%$</small> |
| | <small>*base rate fallacy*</small> | <small>$77\\%$</small> |
| | <small>*inappropriate measures*</small> | <small>$69\\%$</small> |
| <small>The pitfall can be easily avoided.</small> | <small>*inappropriate measures*</small> | <small>$62\\%$</small> |
| | <small>*inappropriate parameter selection*</small> | <small>$62\\%$</small> |

# <div />

<h2>impact evaluation</h2>

- mobile malware
- code vulnerabilities
- code attribution
- network intrusion

## mobile malware detection

- sampling bias: malware from one source
- spurious correlation: URL is an important feature
- inapproriate measures: accuracy

## vulnerability discovery

-
-

## code attribution

-
-

## network intrusion detection

-
-

# Let's discuss!
