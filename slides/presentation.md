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

- identifying 10 pitfalls of ML in security domain
- prevalence in 30 top-tier conference papers
- impact evaluation in 4 selected studies


# <div />

<h2>pitfall identification</h2>

| <small>data collection</small> | <small>system design</small> | <small>performance evaluation</small> | <small>operation</small> |
| -- | -- | -- | -- |
| <small>sampling bias</small> | <small>data snooping</small> | <small>inappropriate baselines</small> | <small>lab-only evaluation</small> |
| <small>label inaccuracies</small> | <small>spurious correlations</small> | <small>inappropriate measures</small> | <small>inappropriate threat model</small> |
| | <small>biased parameters</small> | <small>base rate fallacy</small> | |

## sampling bias

- collected data don't represent true distribution

## label inaccuracies

- ground-truth labels are inaccurate

## data snooping

- the model is trained with unavailable data

## spurious correlations

- learning shortcut patterns in the data

## biased parameter

- parameters are estimated using the test set

## inappropriate baseline

- evaluation without / with limited SOTA baseline

## inappropriate performance measures

- inappropriate measures of performance
  - imbalanced dataset
  - aggregated metrics

## base rate fallacy

- class imbalance is ignored during interpretation

## lab-only evaluation

- missing discussion of practical limitations

## inappropriate threat model

- not considering adversarial / adaptive attacks


# <div />

<h2>prevalence analysis</h2>

- reviews of papers w.r.t pitfalls
- survey of the paper authors

## pitfalls by prevalence


# <div />

<h2>impact evaluation</h2>

- mobile malware
- code vulnerabilities
- code attribution
- network intrusion



