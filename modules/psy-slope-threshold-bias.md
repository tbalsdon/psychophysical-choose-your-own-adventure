---
title: "Slope, threshold, and bias"
short_title: Slope, threshold, bias
---

# Slope, threshold, and bias

:::{note} Where you are
Part of [Psychometrics](psy.md).
:::

The properties of the psychometric function help us to quantify different relations
between the internal value and the external stimulus. The **slope** tells us about
the noise affecting the precision of the internal value (its variability).

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run. The first run takes a
few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-slope.ipynb
:width: 100%
:label: nb-slope
Psychometric functions for several internal-noise levels, with their thresholds.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-slope.ipynb)

Increasing the noise decreases the slope (it is flatter) because the observer
experiences more variability across multiple presentations of the same external
stimulus. This corresponds to a larger threshold: more tilt is required to obtain
75% correct.

BUT WAIT! That isn't 75% correct, it's 75% responding 'right'! It's *also* 75%
correct — because the observer is not biased. To see why bias matters, imagine an
observer who has a skewed idea of what vertical is.

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-bias.ipynb
:width: 100%
:label: nb-bias
Left: the curve shifts with bias (slope unchanged). Right: extreme bias lowers
proportion correct.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-bias.ipynb)

On the left, you see the psychometric functions shift with bias, while the slope
remains the same. As before, this shift with bias is attributed to the criterion. It
could be due to a skewed idea of what is vertical, it could be due to some strategy
(e.g. a greater reward for correct 'right' responses), or — as Morgan et al. (2012)
showed — observers can voluntarily shift their criterion by instruction alone,
without affecting the slope. (One could imagine that placing a criterion unnaturally
introduces another source of noise, where the criterion jitters from trial to trial;
this idea has been offered as a potential explanation of blindsight: Azzopardi &
Cowey, 2001.)

On the right, proportion correct is scattered for each criterion (colours) against
the theoretical proportion correct for an unbiased observer. While a little bias is
fine, more extreme bias affects our measure of proportion correct (just as we saw
with simple detection designs). This can be problematic for staircase procedures
(discussed later) used to estimate a threshold: many use a step rule, making the
stimulus harder or easier according to consecutive correct and incorrect responses.

:::{important} Take-away
While the threshold is proposed to be a proxy for sensitivity, it can also be
affected by bias, especially in subjective tasks.
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Discrimination and identification
:link: psy-discrimination.md
The judgement task whose curve we're now dissecting.
:::
:::{card} ➡️ Measuring psychometric functions
:link: psy-measuring.md
With real (few) trials, how do we *fit* the curve?
:::
::::

## References

Azzopardi, P., & Cowey, A. (2001). Why is blindsight blind?

Morgan, M., Dillenburger, B., Raphael, S., & Solomon, J. A. (2012). Observers can
voluntarily shift their psychometric functions without losing sensitivity.
*Attention, Perception, & Psychophysics, 74*, 185–193.
