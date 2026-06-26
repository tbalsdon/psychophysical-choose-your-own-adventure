---
title: "Relation to accuracy"
short_title: Relation to accuracy
---

# Relation to accuracy

:::{note} Where you are
*Sensitivity* (up to the [Sensitivity](sdt-sensitivity.md) overview).
:::

Compare two observers who reach a *similar* proportion correct for very different
reasons.

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run. The first run takes a
few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-sensitivity-two-observers.ipynb
:width: 100%
:label: nb-two-observers
Two observers with similar accuracy — for different reasons.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-sensitivity-two-observers.ipynb)

These observers obtain similar proportion correct.

The observer plotted on top uses an optimal criterion, but they experience more
noise, meaning that signal-present trials are experienced very similarly to
signal-absent trials, they can't tell them apart (they have trouble genuinely
detecting the signal).

The observer plotted on the bottom experiences less noise, meaning that
signal-present trials are often experienced with greater internal values than
signal-absent trials (they detect the signal just fine). But they do badly at the
task because they placed their criterion too conservatively.

Based on proportion correct, the observers are about the same. But one observer
genuinely doesn't detect the signal well, while the other is unwilling to report a
weak signal as being signal-present.

So there are two distinct reasons why someone could do poorly at the task: they
could be genuinely bad at detecting the signal, or they could be biased in what
they report as a signal.

Proportion correct alone can't distinguish these two observers. This is why SDT
remains a popular analytical procedure: it suggests an analysis to distinguish these
two factors contributing to performance.

Rather than calculating proportion correct, SDT relies on the proportion of "yes"
responses, for signal-present and signal-absent trials separately:

- A "yes" on a signal-present trial is called a **hit** (a "no" is called a *miss*)
- A "yes" on a signal-absent trial is called a **false alarm** (a "no" is called a
  *correct rejection*).
- The proportions of "yes" responses are called the **hit-rate** and
  **false-alarm-rate** respectively.

The analytic procedure of SDT calculates sensitivity as:

```{math}
d' = \mathrm{norminv}(\text{hit rate}) - \mathrm{norminv}(\text{false-alarm rate})
```

And the criterion as:

```{math}
c = \tfrac{1}{2}\left(\mathrm{norminv}(\text{hit rate}) + \mathrm{norminv}(\text{false-alarm rate})\right)
```

where bias is a value of $c$ different from 0.

`norminv` is the inverse of the cumulative normal gaussian (the normal gaussian has
mean = 0 and standard deviation = 1). It tells us at what point on the x-axis
(internal value) the cumulative count of ordered values reaches that proportion…
it's easier to demonstrate.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬆️ Sensitivity
:link: sdt-sensitivity.md
Back to the overview of this subsection.
:::
:::{card} ➡️ What is the inverse normal?
:link: sdt-sensitivity-norminv.md
A quick demonstration of `norminv`, which we just used in the equations above.
:::
::::
