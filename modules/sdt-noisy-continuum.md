---
title: "Signal detection theory: a noisy continuum"
short_title: A noisy continuum
kernelspec:
  name: python3
  display_name: Python 3
---

# Signal detection theory: a noisy continuum

:::{note} Where you are
Module **1c** of *Signal Detection Theory* — follows on from threshold theories
(1b) and leads into [the criterion](#whats-next) (1d).
:::

The first major conceptual advance of SDT is that it gets rid of the presumption
of 'discrete states'.

Threshold theories propose that anything below threshold is simply 'absent'. A
signal-present trial below threshold is experienced as just as absent as a
signal-absent trial.

Under SDT everything has some value on a continuous scale. Some signal-absent
trials are psychologically experienced as 'more absent' than other signal-absent
trials. AND a signal-absent trial can be experienced as 'more present' than a
signal-present trial.

It does this by attributing the variability to a baseline level of 'noise'. This
noise is assumed to be gaussian distributed, meaning there is a variable strength
on a continuous scale corresponding to the experience of a signal-absent trial.
On signal-present trials, the strength of the signal is added to this background
of noise, such that it also has a variable strength on the same continuous scale.
The distribution describing signal-present trials has a greater mean (and the same
standard deviation).

This concept of noise was introduced by Louis Thurstone in 1927(b), who termed it
'discriminal dispersion', and it remains a fundamental concept today.

## What is noise?

Noise can be attributed to variability in neurons firing. A quick demo:

:::{tip} This code is yours to edit
The window below is a **live Jupyter notebook running entirely in your browser** —
nothing to install, no account needed. Edit the numbers marked `👈`, then press the
▶ button (or {kbd}`Shift`+{kbd}`Enter`) to re-run — just like pressing "Run Section"
in MATLAB. The very first run takes a few seconds while the Python engine loads.

Try it: what happens to the population-average distribution as you drop
`n_neurons` to 1? Or raise the `baseline_rate`?
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-noisy-continuum.ipynb
:width: 100%
:label: nb-noisy-continuum
The neural-noise demo as a live, editable notebook.
:::

If the notebook is cramped here, you can
[open it full-screen in a new tab ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-noisy-continuum.ipynb).

This simple example demonstrates even though individual neuron's firing rates may
not be described by a gaussian probability distribution, we can reasonably get a
gaussian from the population response. If you are interested in why, the
[wikipedia page on central tendency](https://en.wikipedia.org/wiki/Central_tendency)
is a good place to start.

So, gaussian distributed noise is a neurobiologically plausible assumption for
what happens on signal-absent trials.

(whats-next)=
## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Threshold theories (1b)
The older view this module argues against: discrete states and an uncontrollable
threshold. *(Coming soon.)*
:::
:::{card} ➡️ The criterion (1d)
:link: sdt-criterion.md
If experience lives on a continuum, how does an observer decide when to say
"yes"? Enter the decision criterion.
:::
::::

## References

Albrecht, D. G., & Hamilton, D. B. (1982). Striate cortex of monkey and cat:
contrast response function. *Journal of Neurophysiology, 48*(1), 217–237.

Niemeyer, J. E., & Paradiso, M. A. (2017). Contrast sensitivity, V1 neural
activity, and natural vision. *Journal of Neurophysiology, 117*(2), 492–508.

Thurstone, L. L. (1927b). A law of comparative judgments. *Psychological Review,
34*, 273–286.
