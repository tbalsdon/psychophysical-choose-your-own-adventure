---
title: "Why not just ask people what it's like?"
short_title: Asking what it's like
---

# Why not just ask people what it's like?

:::{note} Where you are
Part of [Scales & appearance](scales.md).
:::

To measure something so subjective, maybe a subjective measure is best. But how do we
ask people to report what something is like in a measurable way?

One method is the **method of adjustment**: show an observer a stimulus and ask them
to adjust another until it looks/sounds like the one they just saw (usually with some
twist — a different context, or a mask — to make it more than mere reproduction).
There are two stubborn problems. The first is **perceptual interactions**: as you
adjust the stimulus, your current percept is affected by how it looked before, often
biasing the report in the direction you were turning the knob (this can be countered
by including both upward and downward adjustments). The second is more theoretical —
the **El Greco fallacy**, named after the mistaken idea that El Greco's elongated
style was due to an astigmatism that made him perceive the world as elongated. If he
had, and painted what he saw, he'd have needed to paint *normally* to perceive his
own paintings as elongated. With the method of adjustment, a perfect replication
doesn't necessarily mean a perfect perception.

Another way is to ask observers to simply report a number corresponding to their
perceived magnitude. This is **magnitude estimation**, championed by Stevens (1957).
He was amazed that he could rescale observers' number responses and plot them as a
straight line in log–log coordinates — striking, in an era when psychologists were
battling to have measurement of psychological experience recognised as genuine
science. The prevailing opinion was that perception results from a "…slow and
doubtless complicated process … liable to more or less accidental derangement at
every step of its progress" (Peirce & Jastrow, 1884): a waste of time to measure.

We can simulate one of Stevens's experiments. Observers held a thin metal rod between
thumb and forefinger as a vibration of a particular amplitude was applied, and
reported a number corresponding to its perceived magnitude.

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run. The first run takes a
few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=scales-magnitude.ipynb
:width: 100%
:label: nb-scales-magnitude
Mean magnitude estimate (log scale) against vibration amplitude.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=scales-magnitude.ipynb)

Stevens's measurements genuinely look this neat. He had 14 observers make 2 estimates
of each of 7 amplitudes — 196 data points — whereas the messy JND staircase simulated
400 trials over just 5 intensities. One can be impressed at how precise people are at
reporting magnitude estimates. Based on this, and many more datasets across an
impressive variety of stimuli and senses, Stevens concluded there was a **power-law**
relation between perceived intensity and stimulus intensity: **Stevens' power law**.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Measuring JNDs
:link: scales-staircase.md
The objective route to measuring appearance.
:::
:::{card} ➡️ The big controversy
:link: scales-controversy.md
Power law vs logarithm — and a tidy resolution.
:::
::::

## References

Peirce, C., & Jastrow, J. (1884). On small differences in sensation. *Memoirs of the
National Academy of Sciences, 3*, 75–83.

Stevens, S. S. (1957). On the psychophysical law. *Psychological Review, 64*(3), 153.

Stevens, S. S., & Stevens, G. E. (1975). *Psychophysics: Introduction to its
perceptual, neural, and social prospects*.
