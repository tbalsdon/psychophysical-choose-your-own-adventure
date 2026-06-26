---
title: "Signal Detection Theory"
short_title: "Signal Detection Theory"
---

# Signal Detection Theory

## Introduction

> "It is an unavoidable aspect of psychological experiments that no matter how well
> instructed, it is the observer who determines how the task is done."
> — Galvin et al., 2003

One of the most important factors in designing experimental methods is to ensure
the task cannot be done in a way that undermines the hypothesis you are trying to
test. This is something well-developed in psychophysics. Even if the subject of
investigation (perception) is not of paramount interest to you, the principles are
important for all cognitive science.

Psychophysics measures the relationship between physical stimuli and our
psychological experience of them. These measures are not for the purpose of
measurement alone.

Why are we interested in this measurement? The measured relationship tells us about
the processes involved in our psychological experience of physical stimuli.
Psychophysical measurement is a powerful tool for gaining insight into:

- **neural processes** ("How do neurons change their firing rate as a function of
  stimulus orientation?")
- **cognitive processes** ("How do sensitivity and bias contribute to behaviour?")
- **task strategies** ("How do we optimise performance?")

We focus on classical psychophysics concerning sensory stimuli (mainly vision and
audition), but it is important to remember psychophysical methods generalise to many
other domains (for example, to measure the relationship between monetary value and
subjective value, or to measure the perceived evil of different types of crimes —
Thurstone, 1927(a)).

In this part of the course we will examine the relationship between experimental
methods, measurement/analysis, and theory. The aim is to see how the choice of
methods constrains our measures/analyses and therefore what theory/hypotheses can be
tested.

These tutorials include interactive code, to give you more pictures of the theories
and methods, that you can interact with if you choose to. The aim is NOT to teach
you programming, but you can use it to understand more about programming if you wish.
The aim is NOT to teach you mathematical equations, but they are there for you if you
want to look at them. Wherever you see a notebook embedded in a page, you can edit
the code and re-run it right in your browser — nothing to install.

## Section 1. Signal Detection Theory (SDT) and Yes/No vs Forced-choice designs

Detection theory was designed to explain how an observer detects a weak signal in a
'noisy' background. It was originally based on 'statistical decision theory'
(describing game strategy; Wald, 1949), and is both an analytic procedure for
measuring sensitivity and bias in responses, as well as a normative description of
responding in a noisy environment. The analytic procedure was predicted to be
important for studying individual differences and social aspects of perception
(Swets, Tanner, & Birdsall, 1961), and indeed, SDT is used in a wide range of
experimental settings across many domains of psychological research today. The
principles of the normative description are foundational, but less popular today.

## a. The question of detection

Humans can detect a single photon of light (Tinsley et al., 2016; Hecht, Shlaer, &
Pirenne, 1942). But often a single photon of light goes undetected. Sometimes many
photons of light go undetected. Sometimes no photons of light are reported as
detected.

In a yes/no detection experiment, the observer is presented with a signal on some
trials (signal-present), or otherwise nothing (signal-absent), and they are asked to
report 'yes' or 'no' to whether they perceived that the signal was presented on each
trial. We calculate proportion correct as the number of trials in which the observer
reported 'yes' and the signal was present, plus the number of trials in which the
observer reported 'no' and the signal was not present, divided by the total number
of trials.

```{math}
p(\text{correct}) = \frac{\#(\text{'yes'} \mid \text{signal-present}) + \#(\text{'no'} \mid \text{signal-absent})}{\#(\text{signal-present}) + \#(\text{signal-absent})}
```

One observer obtains 75% correct. This could be because they correctly reported 'no'
on all signal-absent trials, but only reported 'yes' on half the signal-present
trials. All signal-present trials used the exact same stimulus, so why doesn't the
observer always give the same response? 75% correct could also be obtained by an
observer who correctly detects the signal on all signal-present trials but also
responds 'yes' on half the signal-absent trials. What could drive the observer to
report something was there when it was not? More realistically, the observer obtains
75% correct because sometimes they fail to report 'yes' when a signal was present,
and sometimes they incorrectly report 'yes' when a signal was not present.

How do we explain the variability in detection?

First, a set of theories we now think are wrong.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ➡️ Threshold theories (1b)
:link: sdt-threshold-theories.md
The first attempt to explain the variability — and where it falls short.
:::
:::{card} ➡️ A noisy continuum (1c)
:link: sdt-noisy-continuum.md
Signal detection theory's answer: a continuous, noisy internal experience.
:::
::::

## References

Hecht, S., Shlaer, S., & Pirenne, M. H. (1942). Energy, quanta, and vision.
*The Journal of General Physiology, 25*(6), 819–840.

Swets, J. A., Tanner Jr, W. P., & Birdsall, T. G. (1961). Decision processes in
perception. *Psychological Review, 68*(5), 301.

Thurstone, L. L. (1927a). The method of paired comparisons for social values.
*The Journal of Abnormal and Social Psychology, 21*(4), 384.

Tinsley, J., Molodtsov, M., Prevedel, R. et al. (2016). Direct detection of a single
photon by humans. *Nature Communications, 7*, 12172.

Wald, A. (1949). Statistical decision functions. *The Annals of Mathematical
Statistics*, 165–205.
