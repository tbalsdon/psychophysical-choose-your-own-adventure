---
title: "The second choice task"
short_title: The second choice task
---

# The second choice task

:::{note} Where you are
Module **1h** of *Signal Detection Theory*, following on from
[the rating-response](sdt-rating-response.md) (1g).
:::

The second choice task involves a 3AFC or 4AFC (or more) stimulus presentation
design, but here the observer is asked to make two reports: a) which interval
contains the signal; b) which is the next most likely interval to contain the signal
(in case your first choice was incorrect — though the observer is asked for this
response every trial irrespective of whether they were correct or incorrect).

SDT predicts that observers make errors when noise happens to exceed the
signal+noise. When performance is sufficiently high, it is unlikely that noise
exceeds signal+noise, it is even less likely that two noise intervals exceed
signal+noise. So, on trials where one interval of noise exceeds the signal+noise,
the signal+noise is more likely to be the next greatest internal value, and so
performance on the second choice will be above chance. Threshold theory predicts
that all errors are because the signal is below the threshold, and everything below
the threshold is discrete absent, and so second choice performance will be at
chance.

The simulation:

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run. The first run takes a
few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-second-choice.ipynb
:width: 100%
:label: nb-second-choice
Second-choice accuracy vs first-choice accuracy, against the threshold-theory chance
line.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-second-choice.ipynb)

You can see that the prediction is well above the chance level predicted by
Threshold Theory.

Actual human behaviour tends to be somewhere between the chance and what is
predicted by SDT. One explanation of why can be found in Solomon (2007). This is an
example of how SDT can be used as a normative description: here humans
systematically underperform compared to the SDT prediction, so there must be more
going on that isn't covered by SDT.

:::{important} The key-key take-away
To test different theories, we need different tasks; the ideal task is one where
theories make very different predictions about behaviour. Even more ideally, we show
our theory to predict different behaviour over multiple different tasks.
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ The rating-response (1g)
:link: sdt-rating-response.md
Another piece of evidence for the continuity of experience.
:::
:::{card} ➡️ The "assumption" of equal variance (1i)
:link: sdt-equal-variance.md
Is equal variance really an assumption of SDT? (Spoiler: no.)
:::
::::

## References

Solomon, J. A. (2007). Intrinsic uncertainty explains second responses.
*Spatial Vision, 20*(1), 45–60.
