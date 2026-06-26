---
title: 'The "assumption" of equal variance'
short_title: Equal variance
---

# The "assumption" of equal variance

:::{note} Where you are
Module **1i** of *Signal Detection Theory*, following on from
[the second choice task](sdt-second-choice.md) (1h).
:::

Something that really annoys me is the assumption of the assumption of equal
variance in SDT. The assumption is that SDT assumes that there is equal variance for
the signal and noise distributions (the histograms in the earlier modules have equal
variance). It's true that this isn't discussed much, and the simple formulas given
in [d-prime](sdt-sensitivity-dprime.md) don't leave room to account for unequal
variance. But this is not a problem.

Here is the formula from before:

```{math}
d' = \frac{\text{signal mean} - \text{noise mean}}{\text{noise sd}}
```

Here is the formula to account for unequal variance:

```{math}
d' = \frac{\text{signal mean} - \text{noise mean}}{\sqrt{\text{noise sd}^2 + \text{signal sd}^2}}
```

The difference is comparable to a one-sample vs two-sample z-test.

The only problem with accounting for unequal variance is the willingness of the
experimenter to measure it. To measure unequal variance, you have to measure a full
ROC, this often means many more trials.

## Why might we hypothesise unequal variance?

Unequal variance can come from the 'multiplicative noise' (noise that increases with
signal strength), for example, from the model of Lu and Dosher (1998). This is
actually something we might predict from models of neural firing rates. Neural
firing rates can be modelled with a poisson distribution, where the variance
increases with the mean (Jazayeri & Movshon, 2006; Seung, & Sompolinsky, 1993). If
noise comes from baseline firing, and neurons respond to the signal with increased
firing, and the variance increases with increasing mean, then the variance of the
neural response to the signal will be greater than the noise (baseline).

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-equal-variance-neural.ipynb
:width: 100%
:label: nb-eqvar-neural
Poisson firing rates: the signal-present distribution ends up wider than baseline.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-equal-variance-neural.ipynb)

So multiplicative noise / unequal variance is neurobiologically plausible,
especially in detection tasks.

## Unequal variance is visible in ROCs

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-equal-variance-roc.ipynb
:width: 100%
:label: nb-eqvar-roc
The rating ROC and its z-transform, with a signal distribution of greater variance.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-equal-variance-roc.ipynb)

Equal variance predicts a symmetric ROC; when the inverse normal of the hit and
false alarm rates are plotted (on the right), this predicts a straight line parallel
to the diagonal. Unequal variance is visible from the asymmetry on the left, and the
non-uniform slope on the right.

:::{important} Take-away
Equal variance is not an assumption of SDT. You can detect and account for unequal
variance by plotting ROCs.
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ The second choice task (1h)
:link: sdt-second-choice.md
Another task that tells SDT and Threshold Theory apart.
:::
:::{card} ⬆️ Signal Detection Theory
:link: sdt-intro.md
Back to the start of the section. (Section 2, Psychometrics, is coming soon.)
:::
::::

## References

Jazayeri, M., & Movshon, J. A. (2006). Optimal representation of sensory information
by neural populations. *Nature Neuroscience, 9*(5), 690–696.

Lu, Z. L., & Dosher, B. A. (1998). External noise distinguishes attention
mechanisms. *Vision Research, 38*(9), 1183–1198.

Seung, H. S., & Sompolinsky, H. (1993). Simple models for reading neuronal
population codes. *Proceedings of the National Academy of Sciences, 90*(22),
10749–10753.
