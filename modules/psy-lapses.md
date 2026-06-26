---
title: "Lapses"
short_title: Lapses
---

# Lapses

:::{note} Where you are
Part of [Extended psychometric functions](psy-extended.md).
:::

So far, we have been assuming that our observer always responds based on their
internal value and the same stable criterion.

The term **lapse** was introduced to describe trials where an observer has a lapse
of attention: for some reason they didn't properly process the signal, or they
accidentally pressed the wrong button. Lapses are most clearly seen at the extremes
of the function, where an observer should achieve 100% correct, but doesn't. Lapses
interrupt our ability to get a good measure of the mean and standard deviation of
the psychometric function.

:::{tip} This code is yours to edit
Run both cells top to bottom, then edit the numbers marked `👈` and re-run. The first
run takes a few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-lapses.ipynb
:width: 100%
:label: nb-lapses
Cell 1: ignoring lapses inflates the noise estimate. Cell 2: fitting a lapse term.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-lapses.ipynb)

Because we haven't accounted for the lapse rate in our fit, we end up estimating
more noise than was actually there. We can fit another parameter to estimate the
lapse rate (cell 2), but this requires a lot of trials — it's easy for the fit to be
biased by the extremes, so with few trials the lapse-rate parameter can really bias
the measure.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬆️ Extended psychometric functions
:link: psy-extended.md
Back to the overview.
:::
:::{card} ➡️ Wobbly criteria
:link: psy-wobbly.md
What if the criterion itself drifts from trial to trial?
:::
::::
