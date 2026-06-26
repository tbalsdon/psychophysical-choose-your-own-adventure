---
title: "Unequal variance"
short_title: Unequal variance
---

# Unequal variance

:::{note} Where you are
Part of [Extended psychometric functions](psy-extended.md).
:::

The second way data can deviate from the psychometric function is the equal-variance
assumption (which you may have met in [Noise variance](noise-variance.md)). It also
has a strong theoretical basis. The model of Lu and Dosher (1998), for example,
includes 'multiplicative noise', where the variance of the noise scales with the
magnitude of the stimulus. This creates a similar problem for the psychometric
function.

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run. The first run takes a few
seconds while the Python engine loads.
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
scales (the Scales section), and external-noise manipulations for multiplicative
noise (Lu and Dosher, 1998; and a fun argument: Gorea & Sagi, 2001 vs. Kontsevich et
al., 2002, and the final blow, Zak et al., 2012).

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
:::{card} ⬅️ Non-linear scales
:link: psy-scales-power.md
The other systematic deviation from the curve.
:::
:::{card} ➡️ Double-knob designs
:link: psy-double-knob.md
Asking the observer two questions at once.
:::
::::

## References

Gorea, A., & Sagi, D. (2001). Disentangling signal from noise in visual contrast
discrimination. *Nature Neuroscience, 4*(11), 1146–1150.

Hermoso-Mendizabal, A., et al. (2020). Response outcomes gate the impact of
expectations on perceptual decisions. *Nature Communications, 11*(1), 1057.

Kontsevich, L. L., Chen, C. C., Verghese, P., & Tyler, C. W. (2002). The unique
criterion constraint: a false alarm? *Nature Neuroscience, 5*(8), 707.

Lu, Z. L., & Dosher, B. A. (1998). External noise distinguishes attention
mechanisms. *Vision Research, 38*(9), 1183–1198.

Zak, I., Katkov, M., Gorea, A., & Sagi, D. (2012). Decision criteria in dual
discrimination tasks estimated using external-noise methods. *Attention, Perception,
& Psychophysics, 74*, 1042–1055.
