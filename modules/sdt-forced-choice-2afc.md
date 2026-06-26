---
title: "The 2AFC task"
short_title: The 2AFC task
---

# The 2AFC task

:::{note} Where you are
*Forced-choice designs* ▸ part 1 of 2 (up to the
[forced-choice](sdt-forced-choice.md) overview).
:::

Let's visualise this.

:::{tip} This code is yours to edit
Run both cells top to bottom, then edit the numbers marked `👈` and re-run. The
first run takes a few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-forced-choice-2afc.ipynb
:width: 100%
:label: nb-2afc
The 2AFC task: the two-interval scatter, then proportion correct and d-prime.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-forced-choice-2afc.ipynb)

The distributions are termed 2D gaussians. You should see the means on each axis
correspond to the means of the noise/signal+noise depending on which contains the
signal.

You should see that proportion correct is actually higher in the 2AFC task compared
to the Yes/No task. This is because the observer gets two presentations with
uncorrelated noise. The correction for d-prime to be equivalent to the yes/no
d-prime uses a sqrt(2) correction — can you see from the figure on the left above
why? (hint: Pythagoras)

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬆️ Forced-choice designs
:link: sdt-forced-choice.md
Back to the overview of this subsection.
:::
:::{card} ➡️ A test against Threshold Theory
:link: sdt-forced-choice-threshold.md
Use the 2AFC-vs-yes/no comparison to tell SDT and Threshold Theory apart.
:::
::::
