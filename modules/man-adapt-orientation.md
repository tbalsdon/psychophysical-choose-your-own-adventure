---
title: "Orientation adaptation"
short_title: Orientation adaptation
---

# Orientation adaptation

:::{note} Where you are
Part of [Adaptation](man-adaptation.md).
:::

V1, the first cortical step of visual processing, contains neurons whose firing rates
are tuned to orientation — well modelled by a circular gaussian (von Mises)
distribution with a certain mean and concentration. Here we simulate a few V1
neurons before and after adaptation, and decode the perceived orientation from their
(Poisson) spike counts using a maximum-a-posteriori read-out (Seung & Sompolinsky,
1993; Jazayeri & Movshon, 2006).

:::{note}
There is a lot of maths in the code that is tangential to this course — it's left in
for the curious, but the main point can be gleaned from the figures alone.
:::

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` (try a different `alpha`, or tuning
width `kappa`) and re-run. The first run takes a few seconds while the Python engine
loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=man-adapt-orientation.ipynb
:width: 100%
:label: nb-adapt-orientation
Top: V1 tuning curves, baseline vs adapted. Bottom: perceived vs true orientation.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=man-adapt-orientation.ipynb)

Orientations close to the adapted orientation are perceived as **repelled** away from
it. Somewhat counter-intuitively, this means that after adapting to vertical we'd see
*increased* sensitivity in a left/right (from vertical) orientation discrimination
task — even though we've reduced firing to orientations near vertical. That this
happens gives you a sense of why this kind of adaptation can be thought of as optimal
resource allocation (though you might also notice a slight increase in variability
near the adaptor).

In this example we *started* with a theory of V1 response functions. But how do we
use adaptation to make *new* inferences about neural responses? For that we compare
competing models — the subject of the next page.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬆️ Adaptation
:link: man-adaptation.md
Back to the overview.
:::
:::{card} ➡️ Adapting gaze models
:link: man-adapt-gaze.md
Using adaptation to choose between encoding models.
:::
::::

## References

Jazayeri, M., & Movshon, J. A. (2006). Optimal representation of sensory information
by neural populations. *Nature Neuroscience, 9*(5), 690–696.

Seung, H. S., & Sompolinsky, H. (1993). Simple models for reading neuronal population
codes. *PNAS, 90*(22), 10749–10753.
