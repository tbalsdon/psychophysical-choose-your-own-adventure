---
title: "Placement and the distribution means"
short_title: Placement & the means
---

# Placement and the distribution means

:::{note} Where you are
*The criterion* (up to the [criterion](sdt-criterion.md) overview).
:::

What do we mean by placing the criterion to maximise accuracy?

:::{tip} This code is yours to edit
Run the two cells top to bottom, then edit the numbers marked `👈` and re-run. The
first run takes a few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-criterion.ipynb
:width: 100%
:label: nb-criterion
The criterion demo as a live, editable notebook — run the two cells top to bottom.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-criterion.ipynb)

You should hopefully see that the best criterion is about 0 (this will vary a
little because of variability in our samples).

For tasks where the experimenter presents 50% signal-present and 50% signal-absent,
the optimal location of the criterion is mid-way between the distributions of noise
and signal+noise. Here the mean of noise is -0.5, the mean of signal+noise is 0.5,
so the optimal location is 0.

:::{important} Take away 1
An observer who is affected by the same underlying noise can achieve worse
proportion correct because they don't put their criterion in the correct location.
:::

If the participant can set their criterion at the optimal location, they can
maximise their accuracy. Accuracy is dependent on both the sensitivity of the
observer (separation of noise and signal+noise distributions) as well as their
ability to optimally place their criterion.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬆️ The criterion
:link: sdt-criterion.md
Back to the overview of this subsection.
:::
:::{card} ➡️ Base rates: the proportion of signal trials
:link: sdt-criterion-baserate.md
What happens to the best criterion when the two trial types aren't equally likely?
:::
::::
