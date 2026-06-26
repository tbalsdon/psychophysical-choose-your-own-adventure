---
title: "Base rates: the proportion of signal trials"
short_title: Base rates
---

# Base rates: the proportion of signal trials

:::{note} Where you are
*The criterion* ▸ part 2 of 2 (up to the [criterion](sdt-criterion.md) overview).
:::

On the previous page the two trial types were equally likely, and the best
criterion sat mid-way between the means. But experiments don't have to present
signal and noise equally often — so what happens to the optimal criterion when one
type of trial is more common than the other?

:::{tip} This code is yours to edit
Run both cells top to bottom, then edit the numbers marked `👈` and re-run.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-criterion-baserate.ipynb
:width: 100%
:label: nb-criterion-baserate
How the best criterion shifts as signal-present trials become rarer or more common.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-criterion-baserate.ipynb)

:::{tip} Task 1
In the first cell, modify the variable `psignal` (for example, `psignal = 0.6`) and
run the code again. Try a few values between 0.1 and 0.9, and watch where the best
criterion lands.
:::

The second cell sweeps the whole range for you. You should see that when
signal-present trials are **rare**, the optimal criterion moves **up** (the
observer should be more conservative, saying 'yes' less often); when they are
**common**, it moves **down** (more liberal). Only when the two types are equally
likely does the optimum sit mid-way between the means. So the best criterion
depends not just on the distributions, but on the *task the experimenter designed*.

:::{important} Take away 2
The optimal placement of the criterion is [always mid-way between the means of the
distributions] / [depends on the task designed by the experimenter] *(delete one)*.
:::

It has been shown that people do adjust their criterion:

a. when performing a task where the signal-present trials are more likely, people
   place their criterion to be more liberal in responding 'yes'
b. when performing a task where the signal-absent trials are more likely, people
   place their criterion to be more conservative in responding 'yes'

Is this optimal according to the simulation you performed in Task 1?

People also make similar adjustments when one response is more rewarded (place the
criterion to be more liberal in responding 'yes' when a correct 'yes' response is
rewarded more than 'no'). This motivated Swets, Tanner & Birdsall (1961) to suggest
that the criterion was under voluntary control by the observer (it reflects a
motivation to obtain a reward). This is also one reason why Swets, Tanner, &
Birdsall (1961) suggest this theory could be useful for studying individual
differences and social influences on perception.

Finally, this suggests that Key point 2 of Threshold theory (that the threshold is
not under our control) is false.

However, criterion placement is not the only factor contributing to proportion
correct.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Placement and the distribution means
:link: sdt-criterion-means.md
Where the "mid-way between the means" result came from.
:::
:::{card} ➡️ Sensitivity (1e)
:link: sdt-sensitivity.md
The *other* factor in proportion correct: how far apart the noise and
signal+noise distributions are.
:::
::::

## References

Swets, J. A., Tanner Jr, W. P., & Birdsall, T. G. (1961). Decision processes in
perception. *Psychological Review, 68*(5), 301.
