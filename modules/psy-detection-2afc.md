---
title: "Detection: 2AFC"
short_title: Detection (2AFC)
---

# Detection: the 2AFC task

:::{note} Where you are
Part of [Types of decisions](psy-decisions.md).
:::

In a 2AFC task, we present two intervals, one containing the signal, and the
observer chooses the interval with the greater internal value as signal-present. For
a two-spatial-interval design, we can tell the observer the Gabor will be presented
on the left or the right of the screen, and ask them to report left/right. (A
two-temporal-interval design could present the intervals in sequence, marked by an
auditory beep, for example.)

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-detection-2afc.ipynb
:width: 100%
:label: nb-detection-2afc
p("right") against signed contrast — the full psychometric function.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-detection-2afc.ipynb)

As the signal strength (contrast) increases, there is a greater difference in the
internal value for the left vs right, and the proportion of "right" responses
becomes more accurate. What we have plotted is the **psychometric function**, which
maps the proportion of responses against the external value: the contrast of the
Gabor (signed by whether it was presented on the left or the right).

The theoretical description of the proportion of "right" responses is the cumulative
gaussian. Its mean is 0 — the criterion for responding "right". Its standard
deviation reflects the noise causing the variability in the internal value, in this
case the standard deviation of the noise multiplied by root-2 (because of the 2AFC
design).

The properties of the gaussian can be inferred from the data, normally by finding
the mean and standard deviation that best fit it. Intuitively, the **mean** is the
point on the x-axis where the line reaches 0.5 on the y-axis (red dotted line). The
**standard deviation** reflects the slope of the line.

Another property people like to discuss is the **threshold**. This is different from
the 'threshold' from [threshold theory](sdt-threshold-theories.md). Here, the
threshold is the point on the x-axis where the line reaches 0.75 on the y-axis (or
0.5, or 0.816, or some other value, depending on the situation and who you are
speaking to). The threshold is not supposed to be some special value below which the
psychological experience is categorically different. It is an intuitive way of
summarising the curve across participants: rather than comparing the proportion of
"right" responses across all stimuli, you can compare a common value — what stimulus
strength would have given 75% correct (blue dotted line).

:::{tip} Task
Try changing the `noise_sd` parameter. What happens to the shape of the psychometric
function? What happens to the threshold?
:::

:::{important} Take-away
The threshold value is related to the slope of the psychometric function and can be
used to summarise performance across stimulus strength values.
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Detection: yes/no
:link: psy-detection-yesno.md
Where the criterion shifted the curve up and down.
:::
:::{card} ➡️ Discrimination and identification
:link: psy-discrimination.md
The same principles applied to judging a stimulus property.
:::
::::
