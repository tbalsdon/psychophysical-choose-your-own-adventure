---
title: "What is the inverse normal?"
short_title: The inverse normal
---

# What is the inverse normal?

:::{note} Where you are
*Sensitivity* (up to the [Sensitivity](sdt-sensitivity.md) overview).
:::

To measure sensitivity we need `norminv` — the inverse of the cumulative normal
gaussian. It tells us at what point on the x-axis (internal value) the cumulative
count of ordered values reaches a given proportion. It's easier to demonstrate:

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-sensitivity-norminv.ipynb
:width: 100%
:label: nb-norminv
How `norminv` reads a value off the cumulative gaussian.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-sensitivity-norminv.ipynb)

You should see that the sample in the position 75% of total ordered samples is
approximately equal to `norminv(0.75)`.

What is the value of `norminv(0.95)`? This is the same value as the cut off for an
alpha level of 0.05 for a one-tailed z-test! The same distribution is used for the
standard z-test in statistics.

OK, back to d-prime.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Relation to accuracy
:link: sdt-sensitivity-accuracy.md
Where the hit-rate, false-alarm-rate and the d-prime equation came from.
:::
:::{card} ➡️ d-prime
:link: sdt-sensitivity-dprime.md
Use `norminv` to turn hit and false-alarm rates into a measure of sensitivity.
:::
::::
