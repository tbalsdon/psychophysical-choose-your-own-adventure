---
title: "Detection: yes/no"
short_title: Detection (yes/no)
---

# Detection: the yes/no task

:::{note} Where you are
Part of [The psychometric function for detection](psy-detection.md).
:::

Let's simulate and plot a yes/no detection task. The contrast of the Gabor varies
from trial to trial; the observer says "yes" whenever their internal value exceeds
their criterion. We can do this for several criteria at once.

:::{tip} This code is yours to edit
Run the cell, then edit the numbers marked `👈` and re-run. The first run takes a
few seconds while the Python engine loads.
:::

:::{iframe} https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-detection-yesno.ipynb
:width: 100%
:label: nb-detection-yesno
Proportion of "yes" responses against contrast, for several criteria.
:::

[Open full-screen ↗](https://tbalsdon.github.io/psychophysical-choose-your-own-adventure/lite/notebooks/index.html?path=psy-detection-yesno.ipynb)

The curves show how the proportion of 'yes' responses increases with increasing
contrast; each line is the theoretical psychometric function based on the internal
noise of the observer, for a different criterion.

:::{important} Take-away
The principles of signal detection theory generalise to predict the psychometric
function.
:::

The observer with the liberal criterion (blue) responds 'yes' about 50% of the time
when the contrast is actually 0 (signal-absent), but close to 100% of the time when
the Gabor contrast is 0.2. The observer with the conservative criterion (red) almost
never responds 'yes' when the contrast is 0, but only responds 'yes' about 50% of
the time when the contrast is 0.2. You should also see the shapes of the curves
shift as the criterion becomes more liberal — though it is hard to see, because we
don't get the full extent of the curve (from 0 to 1) for any one observer.

To ensure you see the full extent of the curve in a detection task, you need to use
a **2AFC** design (with carefully chosen stimulus values).

## Where to go next

::::{grid} 1 1 2 2
:::{card} ⬆️ The psychometric function for detection
:link: psy-detection.md
Back to the overview.
:::
:::{card} ➡️ Detection: 2AFC
:link: psy-detection-2afc.md
See the full psychometric function, and meet the threshold.
:::
::::
