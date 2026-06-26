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

:::{tip} This code is live — and yours to edit
Click the {kbd}`🚀` rocket at the top of the page to enable computation, then run
the cell (or edit the numbers marked `👈` and re-run with
{kbd}`Shift`+{kbd}`Enter`) — just like pressing "Run Section" in MATLAB. Try it:
what happens to the population-average distribution as you drop `n_neurons` to 1?
Or raise the `baseline_rate`?
:::

```{code-cell} python
:tags: [hide-input]
# --- Plot styling (the Python version of makeMyPlotPretty) -------------------
import numpy as np
import matplotlib.pyplot as plt

plt.rcParams.update({
    "figure.dpi": 110,
    "figure.facecolor": "white",
    "axes.facecolor": "white",
    "font.size": 12,
    "axes.titlesize": 13,
    "axes.titleweight": "semibold",
    "axes.linewidth": 1.5,
    "axes.spines.top": False,
    "axes.spines.right": False,
    "axes.grid": False,
    "lines.linewidth": 2.2,
    "legend.frameon": False,
})
BLUE = "#4c6ef5"
```

```{code-cell} python
# ---- Edit these three numbers, then re-run the cell -------------------------
baseline_rate = 2       # 👈 spikes per second on a signal-absent trial
n_neurons     = 100     # 👈 how many neurons we average over
n_trials      = 10000   # 👈 how many signal-absent trials we simulate
# -----------------------------------------------------------------------------

# let's assume you have some neurons in V1 who have a baseline firing rate of
# a couple of spikes per second (realistically, this is probably much higher
# Niemeyer, & Paradiso, 2017; Albrecht, & Hamilton, 1982)
# Neural firing rates are probabilistic and can be described by a poisson
# distribution
# We sample firing rates from the neurons over many signal-absent trials
rng = np.random.default_rng()
firing_rates = rng.poisson(baseline_rate, size=(n_neurons, n_trials))  # sample a poisson distribution

# Let's say we read this out by taking the average firing rate as our
# estimate
est = firing_rates.mean(axis=0)  # the average on the first dimension - across neurons

# lets plot this
fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(7, 6), constrained_layout=True)

ax1.hist(firing_rates[0], bins=np.arange(firing_rates[0].max() + 2) - 0.5,
         color=BLUE, edgecolor="white")
ax1.set_xlabel("Firing rate")
ax1.set_ylabel("Count of trials")
ax1.set_title("Example of 1 neuron")

ax2.hist(est, bins=40, color=BLUE, edgecolor="white")
ax2.set_xlabel("Population average")
ax2.set_ylabel("Count of trials")
ax2.set_title("Wow! Central tendency!")

plt.show()
```

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
If experience lives on a continuum, how does an observer decide when to say
"yes"? Enter the decision criterion. *(Coming soon.)*
:::
::::

## References

Albrecht, D. G., & Hamilton, D. B. (1982). Striate cortex of monkey and cat:
contrast response function. *Journal of Neurophysiology, 48*(1), 217–237.

Niemeyer, J. E., & Paradiso, M. A. (2017). Contrast sensitivity, V1 neural
activity, and natural vision. *Journal of Neurophysiology, 117*(2), 492–508.

Thurstone, L. L. (1927b). A law of comparative judgments. *Psychological Review,
34*, 273–286.
