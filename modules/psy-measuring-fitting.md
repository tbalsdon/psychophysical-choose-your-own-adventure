---
title: "Fitting the function"
short_title: Fitting
---

# Fitting the psychometric function

:::{note} Where you are
Part of [Measuring psychometric functions](psy-measuring.md).
:::

Finding the values of the criterion and slope is not so trivial. What we do is use a
technique to search through different values until we find those that 'best fit' the
data. By 'best fit' we mean we minimise some measure of the error between the data
and the prediction from the theoretical distribution. A good measure of the error
for psychometric functions is the **negative log likelihood**: this examines the
probability of the data given the theoretical prediction and the number of trials.
We take the log so we can add likelihoods across data points (rather than multiply),
and the negative because the algorithm minimises.

:::{tip} This code is yours to edit
Run both cells top to bottom, then edit the numbers marked `👈` and re-run. The first
run takes a few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-measuring-fitting.ipynb
:width: 100%
:label: nb-measuring-fitting
Fitting a probit (cell 1) and comparing it to a logistic (cell 2).
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-measuring-fitting.ipynb)

Because we have few trials, there is some difference between the 'true' psychometric
function and the one from the best-fitting parameters.

:::{tip} Task
Run the first cell a few times and check the difference between the fit and the
ground truth. Then increase the number of trials and see what happens.
:::

The 'probit' cumulative gaussian is not the only form of psychometric function.
Another popular choice is the **logistic** function (the second cell). The shape is
pretty similar, but the theoretical basis is different: the logistic assumes
responses are drawn from a binomial distribution. We can motivate the logistic for
theoretical reasons in some contexts; another motivation is practical, as it slots
neatly into general linear models.

You should see that practically, there is little difference between the two
psychometric functions. The probit should fit slightly better than the logistic in
terms of negative log likelihood here — because the probit is the generating
function we simulated behaviour from.

:::{important} Take-away
To get a good estimate of the psychometric function, the more trials the better.
While the probit matches the theoretical assumptions in this case, the logistic is
often practical and produces similar results.
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ How many trials?
:link: psy-measuring-trials.md
Why few trials give a noisy estimate in the first place.
:::
:::{card} ➡️ Lapses and wobbly criteria
What happens when the observer's responses aren't so well-behaved. *(Coming soon.)*
:::
::::
