---
title: "Adapting gaze models"
short_title: Adapting gaze models
---

# Adapting gaze models

:::{note} Where you are
Part of [Adaptation](man-adaptation.md).
:::

To make *new* inferences with adaptation, we start with some simplified models. Gaze
direction is a good example. Neurons in the superior temporal sulcus of macaques are
sensitive to gaze direction (Perrett et al., 1985), but it was unclear how human
cortex functionally encodes gaze (we're mostly not allowed to put electrodes in human
brains). Palmer and Clifford (2017) tested this by comparing models of adaptation
against changes in perceived gaze in humans. A key question: is there a special
channel tuned to **direct** gaze (proposed to be of special social importance; Senju
& Johnson, 2009)?

We compare two encoding models:

- a **dual-channel** model — one population increases its response with more leftward
  gaze, one with more rightward gaze; and
- a **three-channel** model — adding a third channel tuned to direct gaze.

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run. The first run takes a few
seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=man-adapt-gaze.ipynb
:width: 100%
:label: nb-adapt-gaze
Channel responses (left) and encoded direction, baseline vs adapted (right), for each
model.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=man-adapt-gaze.ipynb)

The dual-channel model predicts **no effect** of adaptation to direct gaze: both
channels are equally adapted, so there's no overall change. The three-channel model
predicts a **repulsion** away from direct gaze following adaptation to it.
Experimental evidence of such repulsion would be evidence in favour of a third
channel encoding direct gaze.

:::{tip} Task
Change the adaptor location to see how the two models make *different* predictions
about adaptation to other gaze directions.
:::

:::{important} Take-away
Adaptation gives us a tool to examine the properties of neuronal responses to a
stimulus feature — but it is best used in combination with some theory describing the
adaptation effect.
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Orientation adaptation
:link: man-adapt-orientation.md
Where the repulsion effect came from.
:::
:::{card} ➡️ External noise
Manipulating the *stimulus* noise to probe perception. *(Coming soon.)*
:::
::::

## References

Palmer, C. J., & Clifford, C. W. (2017). Functional mechanisms encoding others'
direction of gaze in the human nervous system. *Journal of Cognitive Neuroscience,
29*(10), 1725–1738.

Perrett, D. I., et al. (1985). Visual cells in the temporal cortex sensitive to face
view and gaze direction. *Proceedings of the Royal Society B, 223*(1232), 293–317.

Senju, A., & Johnson, M. H. (2009). The eye contact effect: mechanisms and
development. *Trends in Cognitive Sciences, 13*(3), 127–134.
