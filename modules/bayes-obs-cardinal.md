---
title: "Cardinal prior"
short_title: Cardinal prior
---

# Cardinal prior

:::{note} Where you are
Part of [Bayesian observers](bayes-observers.md).
:::

In the real world, we are more likely to encounter orientations close to vertical and
horizontal (the 'cardinal' orientations; Girshick, Landy, & Simoncelli, 2011). We can
add this prior to the observer: since $\log(p(A)p(B)) = \log p(A) + \log p(B)$, we add
the log of the prior (times the number of neurons) to the average posterior, and
re-estimate the MAP.

:::{tip} This code is yours to edit
Run the cells top to bottom, then edit the numbers marked `👈` and re-run. The first
run takes a few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-obs-cardinal.ipynb
:width: 100%
:label: nb-bayes-obs-cardinal
The cardinal prior, its effect on the posterior/MAP, and the simulated estimates.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-obs-cardinal.ipynb)

You should see that the estimated orientations are pulled toward the cardinal
orientations. Why would this be helpful? Look at the final simulation: you should see
both a **bias** toward horizontal (0/180°) and vertical (90°), *and* estimates that
are **more precise** around horizontal/vertical (less spread in the scatter). This
means that perception is more precise for orientations we encounter more often.

These are both properties reflected in human behavioural responses to orientations
(Wei & Stocker, 2015) and in BOLD responses to orientations (Patten, Mannion, &
Clifford, 2017). (These references also point to a more complex implementation via
principles of 'efficient encoding', for those interested to read further.)

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Neural orientation likelihoods
:link: bayes-obs-likelihoods.md
Where the tuning curves and MAP came from.
:::
:::{card} ➡️ Biological implementation
:link: bayes-obs-biological.md
How the brain could build the prior in for free.
:::
::::

## References

Girshick, A. R., Landy, M. S., & Simoncelli, E. P. (2011). Cardinal rules: visual
orientation perception reflects knowledge of environmental statistics. *Nature
Neuroscience, 14*(7), 926–932.

Patten, M. L., Mannion, D. J., & Clifford, C. W. G. (2017). Correlates of perceptual
orientation biases in human primary visual cortex. *Journal of Neuroscience, 37*(18),
4744–4750.

Wei, X. X., & Stocker, A. A. (2015). A Bayesian observer model constrained by
efficient coding can explain 'anti-Bayesian' percepts. *Nature Neuroscience, 18*(10),
1509–1517.
