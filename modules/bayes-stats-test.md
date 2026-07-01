---
title: "A simple test"
short_title: A simple test
---

# A simple test

:::{note} Where you are
Part of [Bayesian statistics](bayes-statistics.md).
:::

We observe $N = 50$ samples of data $\boldsymbol{x}$, sampled from a Gaussian with a
true mean $\mu = 0$ and standard deviation $\sigma = 1$:
$\boldsymbol{x} \sim \mathcal{N}(0, 1)$. Our parameters are $\theta = \{\mu, \sigma\}$.
Assume we know the true standard deviation is 1, but we're unsure about the true
mean: it could be anywhere between $-1$ and $1$, with equal likelihood (a
uniform/uninformative prior).

The posterior can be calculated as proportional to the prior multiplied by the
likelihood, $p(\theta \mid \boldsymbol{x}) \propto p(\theta)\, p(\boldsymbol{x} \mid
\theta)$ (for now, ignore the marginal likelihood).

:::{tip} This code is yours to edit
Run the cells top to bottom, then edit the numbers marked `👈` and re-run. The first
run takes a few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-simple-test.ipynb
:width: 100%
:label: nb-bayes-test
The data with candidate means; the prior, likelihood and posterior; the hypothesis
tests.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-simple-test.ipynb)

The last cell asks two questions. **What is the posterior probability of the null
hypothesis that the mean is 0?** (the value of the posterior at $\mu = 0$.) And
**what is the posterior probability of alternative hypothesis 1: the mean is greater
than 0 (up to 1)?** For this we could do some maths (integrate from 0 to 1), but in
reality we often face problems without simple mathematical solutions — so we use
*numerical integration* (`spi.quad`) to estimate the probability density under the
posterior from 0 to 1.

Model comparison can then be performed using the **Bayes factor**:

```{math}
BF = \frac{p(H_0)}{p(H_1)}
```

If this kind of comparison is our goal, we can safely ignore the marginal likelihood
term $p(\boldsymbol{x})$, because it is the same for $p(H_0)$ and $p(H_1)$.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬆️ Bayesian statistics
:link: bayes-statistics.md
Back to the overview.
:::
:::{card} ➡️ Using prior knowledge
:link: bayes-stats-prior.md
What happens when we add an informative prior.
:::
::::
