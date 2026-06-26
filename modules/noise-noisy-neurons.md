---
title: "Noisy neurons"
short_title: Noisy neurons
---

# Noisy neurons

:::{note} Where you are
*What is noise?* (up to the [What is noise?](noise.md) overview). This
detour expands on the noise introduced in [the criterion](sdt-criterion.md).
:::

Noise can be attributed to variability in neurons firing. A quick demo:

:::{tip} This code is yours to edit
The window below is a **live Jupyter notebook running entirely in your browser** —
nothing to install, no account needed. Edit the numbers marked `👈`, then press the
▶ button (or {kbd}`Shift`+{kbd}`Enter`) to re-run. The very first run takes a few
seconds while the Python engine loads.

Try it: what happens to the population-average distribution as you drop
`n_neurons` to 1? Or raise the `baseline_rate`?
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=noise-noisy-neurons.ipynb
:width: 100%
:label: nb-noisy-neurons
The neural-noise demo as a live, editable notebook.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=noise-noisy-neurons.ipynb)

This simple example demonstrates even though individual neuron's firing rates may
not be described by a gaussian probability distribution, we can reasonably get a
gaussian from the population response. If you are interested in why, the
[wikipedia page on central tendency](https://en.wikipedia.org/wiki/Central_tendency)
is a good place to start.

So, gaussian distributed noise is a neurobiologically plausible assumption for
what happens on signal-absent trials.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬆️ What is noise?
:link: noise.md
Back to the overview.
:::
:::{card} ➡️ Noise variance
:link: noise-variance.md
What if the noise isn't the same size on signal and noise trials?
:::
::::

## References

Albrecht, D. G., & Hamilton, D. B. (1982). Striate cortex of monkey and cat:
contrast response function. *Journal of Neurophysiology, 48*(1), 217–237.

Niemeyer, J. E., & Paradiso, M. A. (2017). Contrast sensitivity, V1 neural
activity, and natural vision. *Journal of Neurophysiology, 117*(2), 492–508.
