---
title: "Non-linear scales"
short_title: Non-linear scales
---

# Non-linear scales

:::{note} Where you are
Part of [Extended psychometric functions](psy-extended.md).
:::

While measuring the psychometric function tells us about an observer's response
criterion and the noise affecting their internal value, another important aspect is
how the data might systematically *deviate* from it. This can happen because the
internal continuum does not vary linearly with the stimulus property (linear scale),
or because the noise is not equal across stimulus values (equal variance). This page
looks at the first issue; the [next](psy-scales-variance.md) looks at the second.

The non-linear scale issue is fairly common, and the fix is straightforward. We have
been plotting responses against the presented orientation, simulating an observer
whose internal value varies linearly with it. But what about other stimulus
properties? The **contrast** of the Gabor is commonly manipulated. In the detection
experiment earlier we assumed a linear relationship between presented contrast and
the internal value (perceived contrast). It turns out this isn't a great assumption:
perceived contrast actually operates as a *power function* of presented contrast
(Gottesman, Rubin, & Legge, 1981). This is true of many perceptual magnitudes, which
we'll explore in the Scales section.

What does it look like if perceived contrast follows a power law, but we plot
responses against the presented contrast?

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run. The first run takes a few
seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-scales-power.ipynb
:width: 100%
:label: nb-scales-power
Left: against presented contrast (the curve no longer fits). Right: against the
internal value (it lines up).
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-scales-power.ipynb)

You should see two things. First, the linear-assumption curve (solid black, left) is
completely inappropriate — the internal value is actually stronger than a linear
relationship would assume. Second, even the best-fitting psychometric function (red
dashed) doesn't match the data well, especially for contrast close to 0, because of
the non-linear scaling. When we plot against the internal value (right) things line
up just as well as before. Often we don't know the internal value; we could add a
scaling parameter assuming a power law, or — if this is what we're really interested
in — use a method to estimate it directly.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Wobbly criteria
:link: psy-wobbly.md
Another way the curve can mislead.
:::
:::{card} ➡️ Unequal variance
:link: psy-scales-variance.md
When the noise grows with the stimulus.
:::
::::

## References

Gottesman, J., Rubin, G. S., & Legge, G. E. (1981). A power law for perceived
contrast in human vision. *Vision Research, 21*(6), 791–799.
