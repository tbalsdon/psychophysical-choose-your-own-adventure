---
title: "Lapses and wobbly criteria"
short_title: Lapses & wobbly criteria
---

# Lapses and wobbly criteria

:::{note} Where you are
Part of [Psychometrics](psy.md).
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

What about the stable criterion assumption? Let's say that, from trial to trial, the
observer moves their criterion around randomly — as if their internal representation
of what is vertical can shift slightly, or is noisy itself.

:::{tip} This code is yours to edit
Edit the numbers marked `👈` and re-run.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-wobbly.ipynb
:width: 100%
:label: nb-wobbly
A criterion that jitters from trial to trial.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-wobbly.ipynb)

The slope of the psychometric function is underestimated again. This time there is
nothing we can do about it (or perhaps we could examine sequential dependencies in
responses; Treisman & Williams, 1984; Azzopardi & Cowey, 2001; Vloeberghs et al.,
2024).

:::{important} Take-away
Lapses and wobbly criteria make it look like the observer has a noisier internal
value of the stimulus property than they really do.
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Measuring psychometric functions
:link: psy-measuring.md
Fitting the curve when responses *are* well-behaved.
:::
:::{card} ➡️ Linear scales and equal variance
:link: psy-scales.md
Systematic deviations from the psychometric function.
:::
::::

## References

Treisman, M., & Williams, T. C. (1984). A theory of criterion setting with an
application to sequential dependencies. *Psychological Review, 91*(1), 68.

Vloeberghs, R., Urai, A. E., Desender, K., & Linderman, S. W. (2024). A Bayesian
Hierarchical Model of Trial-To-Trial Fluctuations in Decision Criterion. *bioRxiv*.
