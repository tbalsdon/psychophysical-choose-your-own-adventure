---
title: "Linear scales and equal variance"
short_title: Scales & variance
---

# Linear scales and equal variance

:::{note} Where you are
Part of [Psychometrics](psy.md).
:::

While measuring the psychometric function tells us about an observer's response
criterion and the noise affecting their internal value, another important aspect is
how the data might systematically *deviate* from it. This can happen because the
internal continuum does not vary linearly with the stimulus property (linear scale),
or because the noise is not equal across stimulus values (equal variance).

## Non-linear scales

The first issue is fairly common, and the fix is straightforward. We have been
plotting responses against the presented orientation, simulating an observer whose
internal value varies linearly with it. But what about other stimulus properties?
The **contrast** of the Gabor is commonly manipulated. In the detection experiment
earlier we assumed a linear relationship between presented contrast and the internal
value (perceived contrast). It turns out this isn't a great assumption: perceived
contrast actually operates as a *power function* of presented contrast (Gottesman,
Rubin, & Legge, 1981). This is true of many perceptual magnitudes, which we explore
in the [Scales](psy.md) material.

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

## Unequal variance

The second issue, the equal-variance assumption (which you may have met in
[Noise variance](noise-variance.md)), also has a strong theoretical basis. The model
of Lu and Dosher (1998), for example, includes 'multiplicative noise', where the
variance of the noise scales with the magnitude of the stimulus. This creates a
similar problem for the psychometric function.

:::{tip} This code is yours to edit
Edit the numbers marked `👈` and re-run.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-scales-variance.ipynb
:width: 100%
:label: nb-scales-variance
With variance that grows with the signal, the data deviate from the best fit.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-scales-variance.ipynb)

You should see a similar problem to before: the data points are displaced even from
the best-fitting parameters. This drives the data in a similar direction to the
non-linear scaling problem. The deviation tells us that something is off (the wrong
scale, or unequal variance), but if this is something we want to understand, a
different method is appropriate: magnitude estimation for how the internal value
scales (see the [Scales](psy.md) material), and external-noise manipulations for
multiplicative noise (Lu and Dosher, 1998; and a fun argument: Gorea & Sagi, 2001
vs. Kontsevich et al., 2002, and the final blow, Zak et al., 2012).

Another consideration is the number of trials. Here we simulated 1000 trials per
stimulus value, so the deviations stand out. In human experiments we often have far
fewer, and the deviation will be masked by estimation error. The deviations are
common in animal data, where many trials make them stand out (Hermoso-Mendizabal et
al., 2020); this is not normally a problem for the overall results of a paper.

:::{important} Take-away
Data can systematically deviate from the predictions of the psychometric function,
which is visible if many trials are collected. These deviations are interesting, but
the underlying cause is better tested with other methods.
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Lapses and wobbly criteria
:link: psy-lapses.md
Other reasons the curve can mislead.
:::
:::{card} ➡️ Double-knob designs
:link: psy-double-knob.md
Asking the observer two questions at once.
:::
::::

## References

Gorea, A., & Sagi, D. (2001). Disentangling signal from noise in visual contrast
discrimination. *Nature Neuroscience, 4*(11), 1146–1150.

Gottesman, J., Rubin, G. S., & Legge, G. E. (1981). A power law for perceived
contrast in human vision. *Vision Research, 21*(6), 791–799.

Hermoso-Mendizabal, A., et al. (2020). Response outcomes gate the impact of
expectations on perceptual decisions. *Nature Communications, 11*(1), 1057.

Kontsevich, L. L., Chen, C. C., Verghese, P., & Tyler, C. W. (2002). The unique
criterion constraint: a false alarm? *Nature Neuroscience, 5*(8), 707.

Lu, Z. L., & Dosher, B. A. (1998). External noise distinguishes attention
mechanisms. *Vision Research, 38*(9), 1183–1198.

Zak, I., Katkov, M., Gorea, A., & Sagi, D. (2012). Decision criteria in dual
discrimination tasks estimated using external-noise methods. *Attention, Perception,
& Psychophysics, 74*, 1042–1055.
