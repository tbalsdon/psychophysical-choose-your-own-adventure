---
title: "Sensitivity"
short_title: Sensitivity
---

# Sensitivity

:::{note} Where you are
Module **1e** of *Signal Detection Theory* — follows on from
[the criterion](sdt-criterion.md) (1d). We saw that criterion placement is not the
only factor in proportion correct; here is the other one.
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
it's easier to demonstrate:

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-sensitivity-norminv.ipynb
:width: 100%
:label: nb-norminv
How `norminv` reads a value off the cumulative gaussian.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-sensitivity-norminv.ipynb)

You should see that the sample in the position 75% of total ordered samples is
approximately equal to `norminv(0.75)`.

What is the value of `norminv(0.95)`? This is the same value as the cut off for an
alpha level of 0.05 for a one-tailed z-test! The same distribution is used for the
standard z-test in statistics.

OK, back to d-prime:

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-sensitivity-dprime.ipynb
:width: 100%
:label: nb-dprime
Hit/false-alarm rates across criteria → the ROC curve and d-prime.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=sdt-sensitivity-dprime.ipynb)

The figure on the left is called a "receiver operating curve" or ROC or commonly
"ROC curve".

What it shows is that there is a systematic relationship between the probability of
responding "yes" on signal-absent trials and the probability of reporting "yes" on
signal-present trials, contrary to key point 1 of Threshold Theory (for Threshold
Theory there is no reason why someone should increase guessing "yes" while
experiencing a discrete absent state, and the probability of experiencing a
signal-present).

This relationship was shown using the yes/no task with different manipulations (the
proportion of signal-present trials, and the reward for correct "yes" vs "no"
responses). This was taken as evidence against Threshold Theory.

:::{tip} Task 2
Try changing the value of `noise_sd`, and (separately) the value of
`signal_strength`, and re-running the code.
:::

:::{important} Take-away 3
d-prime [does] / [does not] distinguish an observer with more noise from an
observer with weaker signal *(delete one)*.
:::

:::{tip} Task 3
Try changing the number of trials (halve it, and double it).
:::

d-prime measures the ratio of signal to noise. The theoretical equation is:

```{math}
d' = \frac{\text{signal mean} - \text{noise mean}}{\text{noise sd}}
```

(the distance of the signal distribution from the noise distribution in units of
standard deviation). The equation we use to calculate d-prime is a simple way of
getting to this measure from the data.

You should see that our estimate of d-prime from 2000 trials is relatively poor
when the criterion becomes more biased (away from 0), and it gets worse with fewer
trials. In normal experiments we might have only 200 trials, and we don't know how
biased our observers will be.

One thing that can be used to improve our measure of sensitivity is to use responses
across the ROC. This is done by manipulating criterion placement in different
conditions, or using a rating-response (see below). The d-prime equation above is
then used to calculate d-prime across the full ROC curve using a fitting method (I
won't go into details).

If we are interested in getting a good measure of sensitivity, we should get rid of
the bias problem. **Use a forced-choice task!**

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ The criterion (1d)
:link: sdt-criterion.md
The *first* factor in proportion correct: where the observer says "yes".
:::
:::{card} ➡️ Forced-choice designs (1f)
How a forced-choice task sidesteps the bias problem to give a cleaner measure of
sensitivity. *(Coming soon.)*
:::
::::
