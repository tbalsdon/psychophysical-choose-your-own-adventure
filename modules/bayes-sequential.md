---
title: "Bayesian sequential sampling"
short_title: Sequential sampling
---

# Bayesian sequential sampling

:::{note} Where you are
Part of [Bayesian inference](bayes.md).
:::

In addition to building priors into perceptual processing, humans also implement
Bayes-like computations at higher levels of processing. Adjustments in the placement of
decision criteria, for example, have been shown to track changes in stimulus category
likelihoods, in a manner that can be described by Bayes (e.g. Gupta et al., 2024).

Another implementation is in accumulating evidence for decision-making. Sequential
sampling models aim to describe response times in addition to choice sensitivity and
response bias. Rather than a single snapshot, these models assume that samples of
signal+noise are added over time, until a bound is reached that determines the choice and
response time. This can also be described as Bayesian.

This will be demonstrated using a task from Drugowitsch, Wyart et al., 2016.

On each trial, the participant is shown a sequence of sinusoidal gratings. The orientation
of each grating is drawn from one of two circular Gaussian (Von Mises) distributions, and
the observer is asked to infer which. The distributions (A/B) are centred on +/- 45
degrees from vertical, with dispersion, kappa = 0.5. The extent of overlap means that
although an orientation of 45 degrees is most likely to have been drawn from the
distribution with that mean (B), it could also have been drawn from the other distribution
(A), though with lower likelihood.

## Bayes optimal choices

The optimal solution to infer the generating distribution is to take as evidence the
posterior probability of the distribution (A/B) given the orientation (theta) presented at
each moment:

```{math}
p(A \mid \theta) = p(\theta \mid A)\, p(A)
```

With an equal prior for A and B (p(A) = p(B) = 0.5), and given the Von Mises,
$p(A \mid \theta)$ is proportional to:

```{math}
p(\theta \mid A) = \frac{1}{\pi\, I_0(\kappa)}\, \exp\!\big(\kappa \cos(2(\theta - \mu_A))\big)
```

> "today's posterior is tomorrow's prior" (Lindley, Bayesian statistics, a review. 1972,
> p. 2)

Having already been presented with one sample, the evidence at sample two should be
computed with an adjusted prior (what is already known from the first sample):

```{math}
p(A) = p(A \mid \theta_1); \quad p(B) = p(B \mid \theta_1)
```

So the evidence for sample two is:

```{math}
p(A \mid \theta_2) = p(\theta_2 \mid A)\, p(A \mid \theta_1)
```

Multiplying probabilities is proportional to summing the logs:

```{math}
\log p(A \mid \theta_2) = \log p(\theta_2 \mid A) + \log p(A \mid \theta_1)
```

We can compute $\log p(A \mid \theta)$ directly as proportional to:

```{math}
\log p(A \mid \theta) \propto \kappa \cos(2(\theta - \mu_A))
```

This process should continue over (n) samples such that:

```{math}
\log p(A \mid \theta_n) = \sum \log p(\theta_{1:n} \mid A)
```

The observer then chooses A as the generating distribution if
$\log p(A \mid \theta_n) > \log p(B \mid \theta_n)$.

Below we will simulate a few trials to see what this looks like.

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run. The first run takes a few
seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-seq-optimal.ipynb
:width: 100%
:label: nb-bayes-seq-optimal
Accumulated evidence (sum of log odds) over samples: A trials (red) and B trials (blue),
with the trial averages in bold.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-seq-optimal.ipynb)

You should see that the evidence (posterior / sum of log odds) quickly becomes separable,
distinguishing the trials from each generating distribution.

## Human Suboptimalities

Humans are not optimal. The extent of human suboptimalities can be measured by comparing
human behaviour to this Bayes optimal observer. Taking the ratio of human performance
compared to the optimal is a measure called 'efficiency' (Geisler 1989). One can also
attempt to describe human suboptimalities by distorting the optimal observer model in
various ways and examining how this might better capture human behaviour.

Drugowitsch, Wyart et al., 2016 used this approach to show two main suboptimalities
affecting human decision-making in this task: noise affecting the loglikelihood of each
sample, and a temporal bias capturing how earlier samples contributed less to the final
choice (recency effect). The noise was particularly interesting because it was best
implemented at the decision-making level, not at the perceptual level (error in perceiving
the orientation) suggesting this form of inference noise was a far greater disruptor of
human efficiency. We will implement this below.

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-seq-noise.ipynb
:width: 100%
:label: nb-bayes-seq-noise
The noisy human evidence against the optimal means, and proportion correct for the human
vs the optimal observer.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=bayes-seq-noise.ipynb)

The mean evidence is about the same, but the human evidence is much more spread, and so
performance is substantially decreased. Just a little bit of inference noise can have a
big effect on performance.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬆️ Bayesian inference
:link: bayes.md
Back to the start of the section.
:::
:::{card} ⬅️ Bayesian observers
:link: bayes-observers.md
Perception as Bayesian inference.
:::
::::

## References

Drugowitsch, J., Wyart, V., Devauchelle, A. D., & Koechlin, E. (2016). Computational
precision of mental inference as critical source of human choice suboptimality. *Neuron,
92*(6), 1398–1411.

Geisler, W. S. (1989). Sequential ideal-observer analysis of visual discriminations.
*Psychological Review, 96*(2), 267–314.

Gupta, D., DePasquale, B., Kopec, C. D., & Brody, C. D. (2024). Trial-history biases in
evidence accumulation can give rise to apparent lapses in decision-making. *Nature
Communications, 15*(1), 662.

Lindley, D. V. (1972). *Bayesian statistics: A review.* Society for Industrial and Applied
Mathematics.
