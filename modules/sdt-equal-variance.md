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

:::{seealso} Why might variance be unequal?
There are good neurobiological reasons to expect the signal distribution to be *more*
variable than the noise — multiplicative noise, Poisson firing, and so on. That's a
detour into [**Noise variance**](noise-variance.md) (part of
[What is noise?](noise.md)).
:::

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
