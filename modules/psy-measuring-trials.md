---
title: "How many trials?"
short_title: How many trials?
---

# How many trials?

:::{note} Where you are
Part of [Measuring psychometric functions](psy-measuring.md).
:::

So far, we have been simulating an observer performing thousands of trials. With
human participants we are often constrained to many fewer trials. How many trials do
we need to get a good measure?

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run. The first run takes a
few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-measuring-trials.ipynb
:width: 100%
:label: nb-measuring-trials
The same experiment, repeated 1000 times, with only a few trials each.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-measuring-trials.ipynb)

Why are the values so spread out along the y-axis?

:::{tip} Task
Change the number of trials, and see what happens.
:::

We have also thus far been working with a psychometric function that is known to us:
we can plot the theoretical function because we know the criterion and the noise
affecting the simulated responses. But in the real world, we are interested in
finding these values based on the participants' responses.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬆️ Measuring psychometric functions
:link: psy-measuring.md
Back to the overview.
:::
:::{card} ➡️ Fitting the function
:link: psy-measuring-fitting.md
How to recover the criterion and slope from the data.
:::
::::
