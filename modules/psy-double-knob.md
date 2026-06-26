---
title: "Double-knob designs"
short_title: Double-knob designs
---

# Cool "double-knob" designs

:::{note} Where you are
Part of [Psychometrics](psy.md).
:::

You don't have to limit yourself to asking observers one question about what they
perceived. You can ask 2! (or more… we went a bit extreme here: Recht et al., 2022.)

In double-judgement psychophysics, or "double-knob" tasks (Klein, 1985), the
participant is presented with a stimulus (often in a 2-interval design) and asked to
make two reports about what they perceived. For example, detect the interval the
stimulus was presented in, and identify its colour. Rollman & Nachmias (1972)
presented observers with either a faint 'chromatic flash' (coloured light), or
nothing, each trial and asked participants if they detected the stimulus and whether
it was red or green. They found identification (red vs green) performance was better
than chance even on trials where the observer reported not detecting the stimulus.
Spooky.

Allik and colleagues (1982; 2014 — the experiment was so good they did it twice!)
presented participants with two 'bullseye' images (a circle with a dot in it). In
one the dot was offset slightly left or right; in the other it was centred.
Participants performed a (2AFC) detection of the offset, and discriminated whether
the offset was left or right of vertical. Discrimination performance was better than
chance even on trials where the observer could not detect the offset.

When you simulate the experiment, everything makes sense.

:::{tip} This code is yours to edit
Run the cells top to bottom, then edit the numbers marked `👈` and re-run. The first
run takes a few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-double-knob.ipynb
:width: 100%
:label: nb-double-knob
Cell 1: identification beats detection. Cell 2: detection's odd curve. Cell 3: the
evidence and decision rules.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-double-knob.ipynb)

The first cell shows it really looks like observers can discriminate offsets that
they cannot detect. The second cell fits psychometric functions to each judgement —
and the detection judgements don't look like they follow a psychometric function!

The third cell shows why: the psychometric function isn't appropriate because the
evidence (internal value) isn't normally distributed. Identification uses a simple
diagonal decision rule (first + second), giving a roughly normal internal value.
Detection uses a corner-shaped rule (|second| − |first|), folding the evidence into
a non-normal distribution.

:::{important} Take-away
Even if the internal noise affecting the psychological experience of the stimulus
property is normally distributed, the task required of the observer might require a
comparison that results in non-normal distributions.
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ Unequal variance
:link: psy-scales-variance.md
Other ways data depart from the simple psychometric function.
:::
:::{card} ⬆️ Psychometrics
:link: psy.md
Back to the start of the section.
:::
::::

## References

Allik, J., Dzhafarov, E., & Rauk, M. (1982). Position discrimination may be better
than detection. *Vision Research, 22*, 1079–1081.

Allik, J., Toom, M., & Rauk, M. (2014). Detection and identification of spatial
offset: Double-judgment psychophysics revisited. *Attention, Perception, &
Psychophysics, 76*, 2575–2583.

Klein, S. A. (1985). Double-judgment psychophysics: problems and solutions. *JOSA A,
2*(9), 1560–1585.

Recht, S., Jovanovic, L., Mamassian, P., & Balsdon, T. (2022). Confidence at the
limits of human nested cognition. *Neuroscience of Consciousness, 2022*(1), niac014.

Rollman, G. B., & Nachmias, J. (1972). Simultaneous detection and recognition of
chromatic flashes. *Perception & Psychophysics, 12*(3), 309–314.
