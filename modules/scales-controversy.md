---
title: "The big controversy"
short_title: The big controversy
---

# The big controversy

:::{note} Where you are
Part of [Scales & appearance](scales.md).
:::

The Weber–Fechner law was meant to be a universal law for all sensation, specifying
a **logarithmic** scale of perceived intensity. But Stevens consistently found a
**power** function. This wasn't the first log-vs-power debate: in 1728 Cramer proposed
a power function for the subjective value of money; Bernoulli proposed a logarithmic
function in 1738. The two functions actually look quite similar.

:::{tip} This code is yours to edit
Run both cells top to bottom, then edit the numbers marked `👈` and re-run. The first
run takes a few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=scales-controversy.ipynb
:width: 100%
:label: nb-scales-controversy
Cell 1: Cramer's power vs Bernoulli's log. Cell 2: MacKay's two-log resolution.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=scales-controversy.ipynb)

Both equations (cell 1) propose a steeper increase for small values that levels off
as the value grows. This wasn't considered particularly controversial in 1738. But in
1958 Luce and Edwards wrote "The controversy is particularly hot at present…" — not
only because Stevens was questioning the well-established principles of Fechner (which
could be considered the birth of psychophysics), but because the field of psychology
was battling to establish itself as a quantitative science. In 1932 the Ferguson
committee had been appointed by the British Association for the Advancement of Science
to "consider and report upon the possibility of quantitative estimates of sensory
events". Its 1939 report detailed the committee's inability to reconcile their views,
one being that sensation intensities are *not measurable*. Questioning the
Weber–Fechner law — showing that a different measure of the same phenomenon gives a
different functional description — was not helping psychology's case.

My favourite explanation is from MacKay (1963). It's beautiful: Stevens missed a
step. We missed a step. We input a stimulus, it is transformed to a perceptual
experience, and then we just output the number. But if we expect a transformation
from stimulus to perception, why not another from perception to *response*? MacKay
showed that applying **two** log functions — Weber's law on the input and again on
the output — gets us back to Stevens' power law (cell 2).

Applying the log law twice produces the straight line that is indicative of a power
law. The power law is not a description of stimulus→perception, but of
stimulus→perception→response.

:::{important} Key take-away
For any subjective measure we need to consider how the observer makes their response.
:::

> "It is an unavoidable aspect of psychological experiments that no matter how well
> instructed, it is the observer who determines how the task is done."
> — Galvin et al., 2003

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Why not just ask people what it's like?
:link: scales-magnitude.md
Where Stevens' power law came from.
:::
:::{card} ➡️ Maximum likelihood difference scaling
:link: scales-mlds.md
Measuring perceptual scales in context.
:::
::::

## References

Galvin, S. J., Podd, J. V., Drga, V., & Whitmore, J. (2003). Type 2 tasks in the
theory of signal detectability. *Psychonomic Bulletin & Review, 10*, 843–876.

Luce, R. D., & Edwards, W. (1958). The derivation of subjective scales from just
noticeable differences. *Psychological Review, 65*(4), 222.

MacKay, D. M. (1963). Psychophysics of perceived intensity: A theoretical basis for
Fechner's and Stevens' laws. *Science, 139*(3560), 1213–1216.

Stevens, S. S. (1957). On the psychophysical law. *Psychological Review, 64*(3), 153.
