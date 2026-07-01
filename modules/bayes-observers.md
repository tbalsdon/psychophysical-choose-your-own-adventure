---
title: "Bayesian observers"
short_title: Bayesian observers
---

# Bayesian observers

:::{note} Where you are
Part of [Bayesian inference](bayes.md).
:::

Bayes is the ***'optimal'*** way to use what we know about previous 'states of the
world' to have better estimates of current 'states of the world', as well as reducing
our uncertainty.

Perception is a fundamental example of a useful application of Bayes: we do not have
direct access to any 'truth' of the world around us, only noisy estimates from
indirect measures (light, sound, et cetera). Perception is the result of a decision
about the most likely cause of the noisy and ambiguous sensory evidence, which is
additionally disrupted by our own noisy perceptual processes.

Using Bayes, this can be framed as taking the maximum likelihood of our posterior
estimate of the cause of our sensations:

```{math}
p(\text{cause} \mid \text{sensations}) = \frac{p(\text{sensations} \mid \text{cause})\, p(\text{cause})}{p(\text{sensations})}
```

::::{grid} 1 1 3 3
:::{card} Neural orientation likelihoods
:link: bayes-obs-likelihoods.md
Decode a line's orientation from noisy V1 neurons.
:::
:::{card} Cardinal prior
:link: bayes-obs-cardinal.md
Add the prior that vertical and horizontal are more common.
:::
:::{card} Biological implementation
:link: bayes-obs-biological.md
Build the prior into the neurons themselves.
:::
::::
