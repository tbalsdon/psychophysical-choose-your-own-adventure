---
title: "Using prior knowledge"
short_title: Using prior knowledge
---

# Using prior knowledge

:::{note} Where you are
Part of [Bayesian statistics](bayes-statistics.md).
:::

What if we have some idea that the mean should be close to 0? We can set the prior to
a normal distribution, with a mean of 0 and a standard deviation of 0.2.

:::{tip} This code is yours to edit
Run the cells, then edit the numbers marked `👈` and re-run. The first run takes a few
seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-prior.ipynb
:width: 100%
:label: nb-bayes-prior
The two priors, the likelihood, the two posteriors, and both Bayes factors.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-prior.ipynb)

You should see that the posterior is now closer to 0 and has a tighter range: using a
more specific prior increases accuracy and decreases uncertainty (so long as the
prior is valid). The Bayes factor is also larger, indicating greater evidence in
favour of the null hypothesis. If you want, try changing the prior to be centred on
$\mu = 0.1$, and see what happens to the posterior and Bayes factor.

Things can get more complicated: we're often dealing with uncertainty across multiple
parameters. Say we didn't know the standard deviation — then we would have to
*marginalise* it out to look at the posterior mean. Marginalising is another integral,
and we would end up with

```{math}
p(H_1 \mid \boldsymbol{x}) = \int\!\!\int p(\boldsymbol{x} \mid \mu, \sigma)\, p(\sigma)\, p(\mu)\, d\sigma\, d\mu
```

As things get more complicated, we can switch to MCMC to estimate the integral. That
is a problem for another day.

:::{seealso} Further reading
A great introduction to the MCMC approach: van de Schoot et al. (2021), *Bayesian
statistics and modelling*, Nature Reviews Methods Primers. More on Bayesian
hypothesis testing: Kruschke (2014), *Doing Bayesian Data Analysis* (AKA "the puppy
book").
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ A simple test
:link: bayes-stats-test.md
The uniform-prior version.
:::
:::{card} ➡️ Bayesian observers
:link: bayes-observers.md
From statistics to perception: Bayesian observers.
:::
::::
