---
title: "Maximum likelihood difference scaling"
short_title: MLDS
---

# Beyond isolated magnitude: maximum likelihood difference scaling

:::{note} Where you are
Part of [Scales & appearance](scales.md).
:::

The experience of a sensation is not only a function of a stimulus property, but of
its *context*. Our experience is not absolute, but relative. One example is
**lightness constancy**: the light reaching our eyes depends on both the reflectance
of an object and the illumination. When we turn off a light we don't perceive every
object turning a darker grey — we perceive that there is less light in the room. The
relative nature of perception helps us do this.

:::{note} 🖼️ Lightness-constancy demo coming
A figure of two *identical* grey squares — one on a dark surround, one on a light
surround — that nonetheless look different will live here. (The classic version is
the checkerboard illusion, where a shadowed white square reflects the same light as
an unshadowed black square, yet still looks white.)
:::

How do we understand the effect of *multiple* stimulus properties on perceptual
experience? One recently developed method is **maximum likelihood difference scaling**
(MLDS; Maloney & Yang, 2003). It asks observers to report the perceived difference
between stimuli within a given context; a generalised linear model then retrieves the
perceptual scale (Knoblauch & Maloney, 2008), and these scales can be compared across
contexts. Each trial the observer sees three (or four) stimuli and reports which pair
is more different — for three stimuli, is $(x_1, x_2)$ more different, or
$(x_2, x_3)$? Aguilar & Maertens (2020) did this with checkerboards viewed through a
dark or light transparent "window".

Here we simulate the core method: from many triad judgements of an observer with a
known (compressive) perceptual scale, can we recover that scale?

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run. The first run takes a
few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=scales-mlds.ipynb
:width: 100%
:label: nb-scales-mlds
The recovered perceptual scale (points) against the true one (line).
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=scales-mlds.ipynb)

Using this method we recover the perceptual scale we modelled — suggesting it's a
good way to measure perceptual scales in different contexts. MLDS has been used to
measure the perceptual scale for many interesting properties: perceived lightness
(Aguilar & Maertens, 2020), glossiness (Hansmann-Roth & Mamassian, 2017), colour
(Rogers et al., 2016), and the watercolour effect (Gerardin et al., 2018).

:::{important} Take-away
Psychophysics is full of methods to measure 'what it is like'. Some are still being
developed. While mainly used to study sensation, they can be applied to all sorts of
experiences — even in social psychology, to measure the perceived magnitude of a
crime, for example.
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ The big controversy
:link: scales-controversy.md
Power law vs logarithm, and MacKay's resolution.
:::
:::{card} ⬆️ Scales & appearance
:link: scales.md
Back to the start of the section.
:::
::::

## References

Aguilar, G., & Maertens, M. (2020). Toward reliable measurements of perceptual scales
in multiple contexts. *Journal of Vision, 20*(4), 19.

Gerardin, P., Dojat, M., Knoblauch, K., & Devinck, F. (2018). Effects of background
and contour luminance on the hue and brightness of the watercolor effect. *Vision
Research, 144*, 9–19.

Hansmann-Roth, S., & Mamassian, P. (2017). A glossy simultaneous contrast.
*i-Perception, 8*(1).

Knoblauch, K., & Maloney, L. T. (2008). MLDS: Maximum Likelihood Difference Scaling in
R. *Journal of Statistical Software, 25*, 1–26.

Maloney, L. T., & Yang, J. N. (2003). Maximum likelihood difference scaling. *Journal
of Vision, 3*(8), 5.

Rogers, M., Knoblauch, K., & Franklin, A. (2016). Maximum likelihood conjoint
measurement of lightness and chroma. *Journal of the Optical Society of America A,
33*(3), A184–A193.
