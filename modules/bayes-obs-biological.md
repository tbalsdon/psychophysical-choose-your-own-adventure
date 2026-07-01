---
title: "Biological implementation"
short_title: Biological implementation
---

# Biological implementation

:::{note} Where you are
Part of [Bayesian observers](bayes-observers.md).
:::

How is this implemented in the brain? Do we actually track and represent priors? Or
is there some way this can be implemented in a feedforward manner? Let's re-arrange
the neurons so that they are spaced according to the prior (a bit more dramatic than
the cardinal prior above), and see what happens — this time feeding in a *uniform*
prior.

:::{tip} This code is yours to edit
Run the cells top to bottom, then edit the numbers marked `👈` and re-run. The first
run takes a few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-obs-biological.ipynb
:width: 100%
:label: nb-bayes-obs-biological
The re-spaced tuning curves, the posterior/MAP, and the simulated estimates.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-obs-biological.ipynb)

You should see that having more neurons with tuning functions closer to
horizontal/vertical has the same effect as the cardinal prior. The prior is now
already built into the neural response.

Early work examining cat visual cortex demonstrated a profound impact of early visual
experience on the distribution of neuronal orientation tuning functions, as well as
sensitivity to orientations (Blakemore & Cooper, 1970; Hirsch & Spinelli, 1970; Hubel
& Wiesel, 1961). An oversimplification: the brain builds priors into the neural tuning
functions naturally, by developing more neural resources for operations that are used
more often ("neurons that fire together wire together").

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Cardinal prior
:link: bayes-obs-cardinal.md
The explicit-prior version.
:::
:::{card} ⬆️ Bayesian inference
:link: bayes.md
Back to the start of the section.
:::
::::

## References

Blakemore, C., & Cooper, G. F. (1970). Development of the brain depends on the visual
environment. *Nature, 228*(5270), 477–478.

Hirsch, H. V. B., & Spinelli, D. N. (1970). Visual experience modifies distribution of
horizontally and vertically oriented receptive fields in cats. *Science, 168*(3933),
869–871.

Hubel, D. H., & Wiesel, T. N. (1961). Receptive fields, binocular interaction and
functional architecture in the cat's visual cortex. *Journal of Physiology, 160*(1),
106.
