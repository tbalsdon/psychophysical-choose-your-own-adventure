---
title: "Discrimination and identification"
short_title: Discrimination & identification
---

# The psychometric function for discrimination and identification

:::{note} Where you are
Part of [Types of decisions](psy-decisions.md).
:::

The same principles can be applied to the tasks of discrimination and
identification. The key principle is that the psychological experience of any
stimulus property is also disrupted by noise. Perhaps this is less intuitive than
thinking of a signal added to a background of noise, but the principle is the same:
neurons have probabilistic firing rates, meaning their response to a stimulus may
vary from one presentation to another. Take the Gabor example — a Gabor with a
genuinely vertical orientation could be perceived as oriented slightly rightward
(when briefly presented). On this occasion, neurons who like to respond to vertical
things happened to fire less than they should, and/or neurons who like rightward
oriented things happened to fire more than they should.

So an observer making a judgement about some property of a clearly visible stimulus
has the same problem as an observer trying to detect a weak stimulus: their
psychological experience is variable, so they must make an inference about the
external cause.

:::{note} A side note on discrimination and identification
These tasks require the observer to make some categorical assessment of their
psychological experience of a stimulus. I've grouped them together here because the
terms are generally mixed up in the literature anyway.

The strict definition of the **discrimination** task is where an observer is
presented with two stimuli and asked if they are the same or different (or more
broadly, do they come from the same category). This seems like a 2AFC task, but
actually the observer only has one piece of evidence to decide from — the
*similarity* of the two stimuli — and must set a criterion on how different is
'different'.

Often we use 'discrimination' for tasks that are more strictly **identification** —
especially around some 'natural' boundary on a continuous scale. For the orientation
of the Gabor, we can ask whether it is tilted more left or right of vertical, where
vertical is a natural boundary. We like to call this 'orientation discrimination',
but really it's identification: the task is to identify whether the orientation
belongs to the category 'leftward tilted' or 'rightward tilted'.
:::

Let's simulate an observer who is asked to decide if a Gabor is tilted more leftward
or rightward of vertical.

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run. The first run takes a
few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-discrimination.ipynb
:width: 100%
:label: nb-discrimination
Orientation discrimination: proportion "right" against presented orientation.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-discrimination.ipynb)

This psychometric function looks like the one from the 2AFC detection task in that it
ranges from 0 to 1, but notice the slope is different. In the 2AFC task the root-2
correction is applied because there are two independent stimuli presented; here there
is only one. This is essentially a yes/no task: the observer is deciding 'yes it is
rightward' or 'no it is not rightward' (it is leftward).

All three of the psychometric functions we have seen have cumulative gaussian/normal
theoretical distributions; they differ in the assumed standard deviation of that
distribution, and the range of values possible.

:::{important} Take-away
We can make similar predictions about the shape of the psychometric function across
different tasks.
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Detection: 2AFC
:link: psy-detection-2afc.md
Where the full cumulative-gaussian psychometric function came from.
:::
:::{card} ➡️ Slope, threshold, and bias
:link: psy-slope-threshold-bias.md
What the shape and position of the curve tell us.
:::
::::
