---
title: "Masking"
short_title: Masking
---

# Masking

:::{note} Where you are
Part of [Methods of manipulation](man.md).
:::

Masking, broadly, describes when a secondary 'mask' stimulus affects the perception
of a target. In vision these are typically presented at different times (forward
masking = mask first; backward masking = mask second), and the impact is measured as
a function of the **stimulus-onset-asynchrony (SOA)** between them. Traditional
masking uses a higher-energy mask overlapping the target in space; meta-contrast
masking uses a non-overlapping mask and gives a U-shaped function (good at short SOAs,
worst around ~75 ms, recovering after). There's a nice summary on Scholarpedia
(Breitmeyer & Ogmen, 2007), and a whole book if you're keen (Bachmann & Francis,
2013).

The timing of the masking effect tells us about the timing of the neural processes
involved in perception — the basic idea being that the mask interrupts processing of
the target. (The full story involves reciprocal connections across a hierarchy of
visual areas, and could be a course on its own.)

Masking was a big hit in the 80s and 90s — not for the timing, but for **unconscious
perception**. Marcel (1983) showed a masked colour word could speed (or slow)
responses to a subsequent colour patch, suggesting some semantic processing without
conscious perception. This sparked an obsession with 'subliminal messaging' (the
premise of *They Live*, 1988, and *Josie and the Pussycats*, 2001).

A key component is that the masked stimulus is 'unconscious'. If you've followed this
course, you might find 'unconscious' hard to formalise — it's a categorical label at
odds with the continuous nature of perception. A liberal definition: ask if they saw
it (a criterion). A conservative one: a 2AFC detection task showing *zero*
sensitivity. A common strategy (Marcel, 1983 and others) sidesteps this by showing a
**difference in performance**: if someone discriminates an aspect of the masked
stimulus better than they can detect it, attribute the superior discrimination to
unconscious perception. This is only logical if unconscious perception is the *only*
way to predict better discrimination than detection.

In our experiment, observers see an Arabic digit (1, 3, 7, or 9 — or nothing),
masked after a variable SOA, and must both detect whether a digit appeared and
discriminate whether it was greater or less than 5 (Balsdon & Clifford, 2018).

:::{tip} This code is yours to edit
Run both cells, then edit the `👈` value in cell 2 and re-run. The first run takes a
few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=man-masking.ipynb
:width: 100%
:label: nb-masking
Cell 1: the unconscious-perception view. Cell 2: the conscious-perception view.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=man-masking.ipynb)

In the **unconscious** view (cell 1), discrimination beats detection because there is
extra evidence available for discrimination that detection can't use. But in the
**conscious** view (cell 2), discrimination *also* beats detection — simply because
the digits are more different from each other than they are from nothing. You don't
need unconscious perception to perform better at discrimination than detection.

There's also a second limit on detection proportion correct: a biased criterion (try
changing `detection_criterion` in cell 2). This would be less problematic if we
examined sensitivity ($d'$) instead of proportion correct.

:::{important} Key take-away
Just because your data confirms your theoretical prediction does not mean your
prediction is correct. Be careful to examine potential 'null' models — aim to
*falsify* your theory.
:::

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬅️ External noise
:link: man-external-noise.md
Manipulating the stimulus noise.
:::
:::{card} ⬆️ Methods of manipulation
:link: man.md
Back to the start of the section.
:::
::::

## References

Bachmann, T., & Francis, G. (2013). *Visual masking: Studying perception, attention,
and consciousness*. Academic Press.

Balsdon, T., & Clifford, C. W. (2018). Visual processing: Conscious until proven
otherwise. *Royal Society Open Science, 5*(1), 171783.

Breitmeyer, B. G., & Ogmen, H. (2007). Visual masking. *Scholarpedia, 2*(7), 3330.

Marcel, A. J. (1983). Conscious and unconscious perception: Experiments on visual
masking and word recognition. *Cognitive Psychology, 15*(2), 197–237.
