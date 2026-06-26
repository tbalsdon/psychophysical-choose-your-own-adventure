---
title: "Threshold theories"
short_title: Threshold theories
---

# Threshold theories

:::{note} Where you are
Module **1b** of *Signal Detection Theory*, following on from the
[introduction](sdt-intro.md) (1a). These are the theories SDT was built to replace.
:::

There are a number of variants of threshold theories (Blackwell, 1953; Luce, 1963;
Krantz, 1969), common to all is that there is some threshold that must be surpassed
for a signal to be reported as 'present', or otherwise the signal is reported as
'absent', and 'absent' is a discrete state.

What is a 'discrete state'? This means that the same psychological experience
underlies every report of 'absent'. You would not feel, for example, more certain
that Trial 346 was definitely absent while Trial 324 was only probably absent. Some
threshold theories also propose that 'present' is also a discrete state (in this case
the psychological experience is binary, there is no variability beyond 'present' and
'absent').

What is the threshold? Whatever is strong enough to invoke a 'yes' (could think of
this like the 'ignition' in global workspace theory). A key aspect here is that the
threshold was not thought of as something we have control over.

What explains the variability? The signal has some probability of surpassing the
threshold. There are two ways this could work:

- **Version 1: the threshold is variable.** The signal is fixed, but the threshold
  it must beat jitters from trial to trial.
- **Version 2: the signal is variable.** The threshold is fixed, but the strength of
  the signal jitters from trial to trial.

:::{tip} This code is yours to edit
The notebook below has both versions — **cell 1 is Version 1, cell 2 is Version 2**.
Run both, edit the numbers marked `👈`, and pay attention to the differences (there
are fewer than you might expect!).
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-threshold-theories.ipynb
:width: 100%
:label: nb-threshold-theories
Threshold theory, two ways: a variable threshold, or a variable signal.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-threshold-theories.ipynb)

So both these theories give some explanation of why we have a variable response on
signal-present trials.

But what about on signal-absent trials?

Random guessing.

The theories offer no other explanation of why an observer would report 'yes' when
nothing was presented other than that they just might guess sometimes. Maybe the
observer thought the signal was presented but they didn't perceive it because they
blinked? There is no reason (under threshold theory) why there would be a
relationship between these guesses and the probability of reporting 'yes' when the
signal is present. This is one of the key things that distinguishes threshold
theories from signal detection theory.

:::{important} Key points
- 'yes' responses on signal-present and signal-absent trials are theoretically
  independent
- the threshold is not under our control
- 'absent' is a discrete state
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Signal Detection Theory
:link: sdt-intro.md
Back to the introduction and the question of detection.
:::
:::{card} ➡️ A noisy continuum (1c)
:link: sdt-noisy-continuum.md
SDT's alternative: drop the discrete states and embrace a noisy continuum.
:::
::::

## References

Blackwell, H. R. (1953). Psychophysical thresholds: Experimental studies of methods
of measurement. *Bull. Eng. Res. Inst. Univ. Mich.*, 36.

Krantz, D. H. (1969). Threshold theories of signal detection. *Psychological
Review, 76*(3), 308.

Luce, R. D. (1963). A threshold theory for simple detection experiments.
*Psychological Review, 70*(1), 61.
