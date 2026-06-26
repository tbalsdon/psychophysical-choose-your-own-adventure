---
title: "Measuring JNDs"
short_title: Measuring JNDs
---

# Measuring JNDs

:::{note} Where you are
Part of [Scales & appearance](scales.md).
:::

We saw that getting a good measure of a psychometric function requires lots of
trials. Getting a good measure of the relation between stimulus intensity and the JND
similarly requires lots of JNDs — so measuring JNDs with full psychometric functions
ends up needing a *lot* of trials. A shortcut is available: the **adaptive
staircase**.

The adaptive staircase adjusts the stimulus level trial-by-trial to home in on a
certain proportion correct. There are sophisticated methods (QUEST, a Bayesian
adaptive search — Watson & Pelli, 1983; ASA — Kesten, 1958), but the basic method of
adjusting up and down based on the run of correct/incorrect responses (Cornsweet,
1962) is still the most common today. The idea is to 'converge' on the threshold.

There are some tricks. Perceptual interactions are common: two stimuli in close
spatial or temporal proximity affect each other's perception, and in a staircase the
current stimulus value is strongly predicted by the previous one. It helps to
**interleave** staircases — one starting above threshold, one below (or two of each).
You can also shrink the step size over trials for a finer measure, but that's
dangerous if the staircase is in the wrong place when the step shrinks.

Let's go fairly basic: two interleaved 2-down-1-up staircases per pedestal, with a
fixed number of trials.

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run. The first run takes a
few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=scales-staircase.ipynb
:width: 100%
:label: nb-scales-staircase
Left: the staircases converging. Right: the recovered JND against pedestal.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=scales-staircase.ipynb)

You can see that even with a few dozen trials in each of two staircases, the measure
is still a bit rough. That's where the more sophisticated staircase procedures help.
A separate problem is that this simulated observer is pretty perfect for a staircase;
real humans have other issues — lapses, biases — which make the measurement worse.

:::{tip} Task
Change the number of trials per staircase and watch how the recovered JND vs pedestal
tightens up (or doesn't).
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ The Just Noticeable Difference
:link: scales-jnd.md
Where JNDs and Weber's law came from.
:::
:::{card} ➡️ Why not just ask people what it's like?
:link: scales-magnitude.md
Subjective measures of appearance.
:::
::::

## References

Cornsweet, T. N. (1962). The staircase-method in psychophysics. *The American Journal
of Psychology, 75*(3), 485–491.

Kesten, H. (1958). Accelerated stochastic approximation. *The Annals of Mathematical
Statistics*, 41–59.

Watson, A. B., & Pelli, D. G. (1983). QUEST: A Bayesian adaptive psychometric method.
*Perception & Psychophysics, 33*(2), 113–120.
