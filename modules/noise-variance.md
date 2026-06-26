---
title: "Noise variance"
short_title: Noise variance
---

# Noise variance

:::{note} Where you are
*What is noise?* ▸ part 2 (up to the [What is noise?](noise.md) overview). This
detour expands on the unequal variance discussed in
[the "assumption" of equal variance](sdt-equal-variance.md).
:::

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

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=noise-variance.ipynb
:width: 100%
:label: nb-noise-variance
Poisson firing rates: the signal-present distribution ends up wider than baseline.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=noise-variance.ipynb)

So multiplicative noise / unequal variance is neurobiologically plausible,
especially in detection tasks.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Noisy neurons
:link: noise-noisy-neurons.md
Where the Gaussian noise came from in the first place.
:::
:::{card} ➡️ Unequal variance in ROCs
:link: sdt-equal-variance.md
Back to signal detection theory: how unequal variance shows up in the ROC.
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
