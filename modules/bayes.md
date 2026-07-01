---
title: "Bayesian inference"
short_title: "Bayesian inference"
---

# Bayesian inference

## Bayes' theorem

Bayes' theorem looks rather simple:

```{math}
p(A \mid B) = \frac{p(B \mid A)\, p(A)}{p(B)}
```

The probability of A given B is equal to the probability of B given A multiplied by
the probability of A, divided by the probability of B. But many people find this
unintuitive, generating what's known as base-rate neglect (Kahneman & Tversky,
1973). The typical example is:

> *Suppose that 0.1% of all people in a population carry a virus. A diagnostic test
> for this virus detects it in 100% of the people who have the virus, but also gives
> false alarms on 5% of the people who do not have the virus. What is the chance that
> a person with a positive test result actually has the virus?*

In a recent experiment (Stengard et al., Cognition, 2022) the modal response was
"95%" (~20% of participants). Calculate the correct response using Bayes' theorem,
with A = "having the virus" and B = "testing positive" (cell 1 below).

:::{tip} This code is yours to edit
Run the cells, then edit the numbers marked `👈` and re-run. The first run takes a few
seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-theorem.ipynb
:width: 100%
:label: nb-bayes-theorem
Cell 1: the virus test. Cell 2: the cab problem.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-theorem.ipynb)

Stengard et al. found just 9% of participants gave an answer between 1.8% and 2.2%,
in line with previous studies, where the correct answer is given less than 20% of the
time.

If you found that unintuitive, try another (based on Bar-Hillel, 1980), in cell 2:

> *In the city, 85% of cabs are blue and 15% are green. In a hit and run accident, an
> eye-witness identifies a green cab. The accident happened at night, and when
> tested, it was found the witness confuses blue and green at night 20% of the time.
> What is the chance the cab was green?*

Here A = "cab is green", B = "witness sees green". Correct answer: **41.38%**.

## Explore

::::{grid} 1 1 2 2
:::{card} Bayesian statistics
:link: bayes-statistics.md
Estimating a parameter from data — with a simple test and with prior knowledge.
:::
:::{card} Bayesian observers
:link: bayes-observers.md
Perception as Bayesian inference: neural orientation likelihoods and priors.
:::
::::

## References

Bar-Hillel, M. (1980). The base-rate fallacy in probability judgments. *Acta
Psychologica, 44*(3), 211–233.

Kahneman, D., & Tversky, A. (1973). On the psychology of prediction. *Psychological
Review, 80*(4), 237.

Stengård, E., Juslin, P., Hahn, U., & van den Berg, R. (2022). On the generality and
cognitive basis of base-rate neglect. *Cognition, 226*, 105160.
