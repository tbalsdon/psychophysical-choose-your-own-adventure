---
title: "The Just Noticeable Difference"
short_title: The JND
---

# The Just Noticeable Difference (JND)

:::{note} Where you are
Part of [Scales & appearance](scales.md).
:::

The Just Noticeable Difference (JND) measures the amount a stimulus property must be
changed in order to notice a difference on a certain proportion of trials (usually
0.5 or 0.75, depending on the design and analysis). The stimulus property has
traditionally been some sort of magnitude, such as brightness or loudness (or
monetary value). The measurement is equivalent to finding the 'threshold' of the
[psychometric function](psy-slope-threshold-bias.md).

Note that, unlike a recent interpretation (Sanford & Halberda, 2022), the JND was
never meant to imply that below the threshold/JND-value, no difference is
perceivable. The JND has always measured the value at which a difference is
*reliably reported*, based on a certain proportion of trials — and "reliably
reported" highlights again that, as we saw with the psychometric function, the
JND can be affected by bias.

How is the JND measured? Here we use a task where the observer detects a difference
between two stimuli. A simple example is brightness: present two squares of similar
luminance and ask if they are the same or different.

:::{note} 🖼️ Brightness demo coming
A side-by-side of two near-identical grey squares (and a clearly different pair)
will live here. *Try it on your own screen:* turn your screen brightness up until two
slightly-different greys look the same, then down until you can tell them apart.
:::

Although two stimuli are presented, this is not necessarily a forced-choice task,
because the observer makes a single comparison between the two. A 2AFC version would
present both a similar and a dissimilar pair and ask which is more different.

The JND for brightness depends on the difference in intensity (termed **dI**) *and*
the base intensity it is added to (the **pedestal**, or **I**). The JND is relative
to the pedestal — and not only for brightness, but for many properties. This is
because perceived magnitude is not linearly equivalent to presented magnitude. In
this way, JNDs can be used to measure something about *appearance* — the perceived
magnitude — essentially by accumulating them (Luce & Edwards, 1958). The perceived
value $p$ is some function of the physical stimulus value, $p = f(x)$. The question
is: what is $f$? That tells us something about 'what it is like'.

:::{tip} This code is yours to edit
Run the cell, then switch `perception` between `"log"`, `"linear"`, and `"power"`
(the `👈`) and re-run. The first run takes a few seconds while the Python engine
loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=scales-jnd.ipynb
:width: 100%
:label: nb-scales-jnd
Left: the psychometric function per pedestal. Right: JND against pedestal.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=scales-jnd.ipynb)

With **log** perception, the JND grows *linearly* with the pedestal: as the pedestal
increases, the JND increases proportionally. This is **Weber's law** (Fechner, a
student of Weber, described the principles in 1860; it is now often called the
Weber–Fechner law):

```{math}
\frac{\Delta I}{I} = k
```

where $k$ is Weber's constant — the just-noticeable difference is a constant fraction
of the intensity. Integrating this relationship (with some awkward assumptions) gives
a logarithmic perceptual scale, $p = k\,\log(I/I_0)$. Luce & Edwards (1958) explain
why this derivation is wrong in principle, even though it often holds in practice.

:::{important} Take-away
A linear relation between JNDs and pedestals is indicative (in some way) of a
*logarithmic* relation between perceived intensity and actual intensity.
:::

Switch the `perception` function in the code to see this: for **linear** perception
the JND is constant across pedestals; for a **power-law** the JND follows a power
function of the pedestal.

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬆️ Scales & appearance
:link: scales.md
Back to the overview.
:::
:::{card} ➡️ Measuring JNDs
:link: scales-staircase.md
A faster way to find the threshold: the adaptive staircase.
:::
::::

## References

Fechner, G. T. (1860). *Elemente der Psychophysik*. Breitkopf u. Härtel.

Luce, R. D., & Edwards, W. (1958). The derivation of subjective scales from just
noticeable differences. *Psychological Review, 65*(4), 222.

Sanford, E., & Halberda, J. (2022). There is no such thing as a "Just Noticeable"
Difference. *Journal of Vision, 22*(14), 3670.
