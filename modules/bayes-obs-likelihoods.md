---
title: "Neural orientation likelihoods"
short_title: Neural orientation likelihoods
---

# Neural orientation likelihoods

:::{note} Where you are
Part of [Bayesian observers](bayes-observers.md).
:::

A basic example is perceiving the orientation of a line. V1, the first cortical step
of visual processing, contains neurons whose firing rates are a function of
orientation — specifically, modulated according to a circular gaussian (von Mises)
distribution, with a certain mean $\mu$ and concentration $\kappa$ (~ inverse
variance). Let's pretend V1 has 18 neurons, tuned to means equidistant across the
full 180 degrees of possible orientations.

:::{tip} This code is yours to edit
Run the cells top to bottom, then edit the numbers marked `👈` and re-run. The first
run takes a few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-obs-likelihoods.ipynb
:width: 100%
:label: nb-bayes-obs-likelihoods
Cell 1: the tuning curves. Cell 2: the posterior, the MAP, and simulated estimates.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-obs-likelihoods.ipynb)

Neuron spike counts tend to be Poisson distributed; the plot shows something
proportional to the mean firing rate (and the mean is also proportional to the
variance, because it's a Poisson). You should see that the firing rate of any one
neuron is *ambiguous* with respect to which orientation was presented: if the neuron
tuned to 90° were firing at 0.8 of its maximal rate, this could be due to a presented
orientation of either ~80° or ~110°.

The log-likelihood of the stimulus orientation given the neuron's spike count can be
estimated as the spike count multiplied by the log of the firing rate function (Seung
& Sompolinsky, 1993; Jazayeri & Movshon, 2006), and the estimate is the maximum a
posteriori (**MAP**). Working with log probability is easier: since
$\log(p(A)p(B)) = \log p(A) + \log p(B)$, we can *sum* the log-likelihoods across all
neurons.

The second cell shows the expected posterior and MAP, then simulates the (Poisson)
neuron firing rates over many presentations, with a uniform (uninformative) prior, to
show the variability in the estimate. On average the estimates are unbiased.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬆️ Bayesian observers
:link: bayes-observers.md
Back to the overview.
:::
:::{card} ➡️ Cardinal prior
:link: bayes-obs-cardinal.md
Add the prior that some orientations are more common.
:::
::::

## References

Jazayeri, M., & Movshon, J. A. (2006). Optimal representation of sensory information
by neural populations. *Nature Neuroscience, 9*(5), 690–696.

Seung, H. S., & Sompolinsky, H. (1993). Simple models for reading neuronal population
codes. *PNAS, 90*(22), 10749–10753.
