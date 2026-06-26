---
title: "The criterion"
short_title: The criterion
---

# The criterion

:::{note} Where you are
Module **1d** of *Signal Detection Theory* — follows on from
[a noisy continuum](sdt-noisy-continuum.md) (1c) and leads into sensitivity (1e).
:::

On any trial, the observer experiences something that can be described on a
continuous scale, with greater values being more like 'signal-present' and smaller
values more like 'signal-absent'. Each trial they have to decide if their
experience should be reported as arising from a signal actually being present in
the external world. They do this by setting a 'criterion' where anything greater
than this criterion is reported as 'yes' a signal was present.

This is the second major conceptual advance of SDT: the response is determined by a
criterion/threshold that can be under the observer's strategic control.

According to statistical decision theory, the observer should place their criterion
to maximise their accuracy. This is the normative description part of the theory,
that there is some optimal way to behave given the task and the constraints (of the
noise). One might also think of this in relation to classic theory of Helmholtz
(1867) who described perception as a process of inferring the cause of our
sensations. Here, the criterion determines whether we decide our sensation (the
psychological experience which can be described as falling on some continuous
scale) was caused by a signal-present or signal-absent type of trial.

What do we mean by placing the criterion to maximise accuracy?

:::{tip} This code is yours to edit
The window below is a **live Jupyter notebook running in your browser**. Run the
two cells top to bottom, then edit the numbers marked `👈` and press ▶ (or
{kbd}`Shift`+{kbd}`Enter`) to re-run — just like "Run Section" in MATLAB. The first
run takes a few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-criterion.ipynb
:width: 100%
:label: nb-criterion
The criterion demo as a live, editable notebook — run the two cells top to bottom.
:::

If the notebook is cramped here, you can
[open it full-screen in a new tab ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-criterion.ipynb).

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

:::{tip} Task 1
Modify the variable `psignal` (for example, `psignal = 0.6`) and run the code
again. Try a few.
:::

:::{important} Take away 2
The optimal placement of the criterion is [always mid-way between the means of the
distributions] / [depends on the task designed by the experimenter] *(delete one)*.
:::

If the participant can set their criterion at the optimal location, they can
maximise their accuracy. Accuracy is dependent on both the sensitivity of the
observer (separation of noise and signal+noise distributions) as well as their
ability to optimally place their criterion.

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
:::{card} ⬅️ A noisy continuum (1c)
:link: sdt-noisy-continuum.md
Where the continuous "internal value" and Gaussian noise came from.
:::
:::{card} ➡️ Sensitivity (1e)
The *other* factor in proportion correct: how far apart the noise and
signal+noise distributions are. *(Coming soon.)*
:::
::::

## References

Helmholtz, H. von (1867). *Handbuch der physiologischen Optik*. Leipzig: Voss.

Swets, J. A., Tanner Jr, W. P., & Birdsall, T. G. (1961). Decision processes in
perception. *Psychological Review, 68*(5), 301.
