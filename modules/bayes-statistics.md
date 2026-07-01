---
title: "Bayesian statistics"
short_title: Bayesian statistics
---

# Bayesian statistics

:::{note} Where you are
Part of [Bayesian inference](bayes.md).
:::

The terms of Bayes' theorem are often referred to as:

- the **posterior** $p(A \mid B)$,
- the **likelihood** $p(B \mid A)$,
- the **prior** $p(A)$, and
- the **marginal likelihood** $p(B)$.

Here we use the term 'likelihood'. Note that probabilities have to add to 1
($p(A) = 1 - p(\neg A)$); likelihoods do not.

In Bayesian statistics, we think about this in terms of data (e.g. a random variable
$\boldsymbol{x}$) and model parameters $\theta$: we ask, *what is the probability of
the model parameter, given the data*, $p(\theta \mid \boldsymbol{x})$? For example,
what is the probability of the null hypothesis that the mean is 0? That is the
probability of the data given the parameter, $p(\boldsymbol{x} \mid \theta)$,
multiplied by the prior probability of the parameter, $p(\theta)$. So Bayes' theorem
in the context of parameter estimation is

```{math}
p(\theta \mid \boldsymbol{x}) = \frac{p(\boldsymbol{x} \mid \theta)\, p(\theta)}{p(\boldsymbol{x})}
```

::::{grid} 1 1 2 2
:::{card} A simple test
:link: bayes-stats-test.md
Infer the mean of some data, and compare hypotheses with a Bayes factor.
:::
:::{card} Using prior knowledge
:link: bayes-stats-prior.md
What an informative prior does to the posterior and the Bayes factor.
:::
::::
