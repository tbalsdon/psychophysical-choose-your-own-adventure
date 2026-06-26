---
title: "External noise"
short_title: External noise
---

# External noise

:::{note} Where you are
Part of [Methods of manipulation](man.md).
:::

Throughout this course we have added "internal noise" to the observer's perceptual
representation of the stimulus — so the exact same external stimulus provokes
different internal responses on different occasions. We can also add **external
noise**. This is easiest to show with the [Gabor](psy.md).

:::{note} 🖼️ Noisy-Gabor demo coming
A grid of images — a Gabor, white noise, and the two summed (at two noise levels) —
will live here. The Gabor gets progressively harder to see as more noise is added.
:::

Adding noise makes the Gabor harder to see, and adding *different* noise on different
trials mimics the variability of the internal response across presentations. We can
operationalise this by saying the total noise affecting perception is the sum of the
internal and external noise (variances add). Let's see what that does to orientation
discrimination.

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run. The first run takes a few
seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=man-ext-psychometric.ipynb
:width: 100%
:label: nb-ext-pf
Adding external noise flattens the psychometric function.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=man-ext-psychometric.ipynb)

External noise additionally decreases performance — it's common to add it purely to
limit performance. But we can also use it to test theories.

Lu and Dosher (1998) used external noise to study how selective attention modulates
perception. Attention might **enhance the signal** (like making a light appear
brighter), **exclude distractors** (reducing the impact of irrelevant parts of the
image), or **reduce internal noise**. Their model is a richer psychophysical model:
there are two internal noises — one *additive* (as we've used) and one
*multiplicative* (its variance grows with stimulus contrast) — plus a **perceptual
template** that upweights the signal by a gain $\beta$. Sensitivity is then
$d' = (\text{perceived signal}) / (\text{total noise})$. The key measurement is the
**threshold contrast** (the contrast needed for a fixed $d'$) across levels of
external noise.

:::{tip} This code is yours to edit
Edit the numbers marked `👈` and re-run.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=man-ext-attention.ipynb
:width: 100%
:label: nb-ext-attention
Three models of attention: threshold contrast vs external noise (attended / both /
unattended).
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=man-ext-attention.ipynb)

The models predict very different functions. In **model 1** (signal enhancement),
attention helps mainly at *low* external noise. In **model 2** (distractor
exclusion), it helps mainly at *high* external noise. In **model 3** (internal-noise
reduction), it helps slightly across all levels. So manipulating external noise
contrast is critical for telling the theories apart. Lu and Dosher found their data
matched **model 1** — attention increases the weight of the external stimulus (signal
+ external noise) relative to internal noise.

:::{important} Take-away
External noise manipulations can be key for understanding perceptual processes — not
merely decreasing performance.
:::

:::{important} Key take-away
Across these examples, a key method has been to *simulate a theory* of perceptual
processes and *design an experiment to test it*. A relatively simple behavioural
experiment can give important insight into cognitive mechanisms.
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Adaptation
:link: man-adaptation.md
Manipulating the neurons themselves.
:::
:::{card} ➡️ Masking
:link: man-masking.md
Using a second stimulus, and time, to probe processing.
:::
::::

## References

Lu, Z. L., & Dosher, B. A. (1998). External noise distinguishes attention mechanisms.
*Vision Research, 38*(9), 1183–1198.
