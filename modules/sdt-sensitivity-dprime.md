---
title: "d-prime"
short_title: d-prime
---

# d-prime

:::{note} Where you are
*Sensitivity* (up to the [Sensitivity](sdt-sensitivity.md) overview).
:::

Now we put it together: from each observer's hit-rate and false-alarm-rate, compute
sensitivity (d-prime) and the criterion.

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run.
:::

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
:::{card} ⬅️ What is the inverse normal?
:link: sdt-sensitivity-norminv.md
The `norminv` function used to compute d-prime.
:::
:::{card} ➡️ Forced-choice designs
:link: sdt-forced-choice.md
How a forced-choice task sidesteps the bias problem to give a cleaner measure of
sensitivity.
:::
::::
