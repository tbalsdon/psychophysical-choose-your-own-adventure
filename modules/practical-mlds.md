---
title: "Practical: psychological scales (MLDS)"
short_title: MLDS practical
---

# Practical exercise — psychological scales

:::{note} Relevant material
This practical builds on [Scales and Appearance → MLDS](scales-mlds.md), and uses ideas
from [Psychometrics → Types of decisions → Detection: 2AFC](psy-detection-2afc.md) and
[Psychometrics → Measuring → How many trials?](psy-measuring-trials.md). Links to the
specific pages are included in the instructions below.
:::

In this practical we will explore further how to uncover the relationship between an
objective variable and the psychological experience of it. We take the example of the
methodology of Maximum Likelihood Difference Scaling (MLDS). An introduction to MLDS is
described in the [Scales and Appearance → MLDS](scales-mlds.md) tutorial.

In this example we will work with the data from Knoblauch & Maloney (2008). This data (and
paper) comes from a tutorial about the use of MLDS and the implementation of an R-package
for data analysis, which I thoroughly recommend. The focus of this practical will be
concerned with model-fitting more generally.

:::{note} This practical is designed to highlight
- How to describe the internal signal providing evidence for a choice
- How to constrain a model to make it identifiable
- How to estimate the usefulness of a model for describing real data
:::

MLDS experiments ask observers to make a judgement about perceived differences between
objective variables. On each trial, two pairs of stimuli are presented, and the observer
must indicate which pair is more different. The task is designed to provide an objective
measure of the subjective scale of some external variable. In this example, it is the
perception of correlation (the observer is presented with scatter plots). Here, we will
see that small correlations (r = 0.1 vs r = 0.2) appear very similar, while large
correlations (r = 0.8 vs r = 0.9) appear more different. The explanation is that the
perceived correlation increases non-linearly with r. How do objectively measure/model
this?

First, the data. The data is available in the csv file Practical_MLDS_data.csv.

::::{grid} 1 1 1 1
:::{card} ⬇️ Download the data
:link: https://raw.githubusercontent.com/tbalsdon/psychophysical-choose-your-own-adventure/main/data/Practical_MLDS_data.csv
**Practical_MLDS_data.csv** — 7 columns, one header row, 990 trials (~18 KB).
Opens in the browser — use your browser's *Save as…* (or right-click → *Save link as…*)
to download it.
:::
::::

## The data

The data file contains 7 columns, with one header row and 990 data rows. Each row is the
details of one trial, on which four stimuli were presented (a, b, c, and d), and the
observer decided which pair (the first, `[a,b]` or the second, `[c,d]`) were more
different.

There were 11 stimuli used in the task. These stimuli are referred to by number: 1-11,
numbers 1-10 refer to correlations of r = 0, 0.1, 0.2, ... 0.9. Stimulus 11 was a
correlation of r = 0.98.

Here is a fuller description of the columns:

1. **run:** There are three runs, labed kk1, kk2, kk3, each run the observer performs one
   trial of the 330 unique combinations of non-overlapping pairs (see Knoblauch & Maloney,
   2008, Section 2.1 for why this is important).
2. **resp:** The response of the observer, which pair they perceived to be more different.
   A value of 0 indicates the first pair was chosen, a value of 1 indicates the second pair
   was chosen.
3. **S1:** Stimulus number for the first stimulus (a) - 1 to 11, see key above.
4. **S2:** Stimulus number for the second stimulus (b) - 1 to 11, see key above.
5. **S3:** Stimulus number for the third stimulus (c) - 1 to 11, see key above.
6. **S4:** Stimulus number for the fouth stimulus (d) - 1 to 11, see key above.
7. **invord:** Whether the pair order was reversed (can be ignored).

## Instructions

1. Download the data and ensure you understand the columns (described in more detail
   above).
2. It's difficult to think of a good way to visualise this data, because there are many
   different pairs of stimuli, and few (3) trials per pair. One thing we can do is bin the
   data. A suggestion (you are welcome to explore): The x-axis will be the difference in
   differences `[(a-b)-(c-d)]` (sort the pairs such that a<b<c<d); the y axis will be
   proportion of second pair choices; plot different lines for the value of `[a]` (or the
   value of `[d]`; you wont have data for all points on the x-axis for all lines). What you
   should see is that as the value of `[a]` increases, the lines become flatter. The
   perceived difference in differences decreases with increasing values.
3. Define a model that describes how the observer is performing this task: for each external
   stimulus value, they have some internal value, which is disrupted by (additive Gaussian)
   noise. The observer takes the difference in differences `[(a-b)-(c-d)]` and reports
   whether this was less than 0 (the second difference was larger). This model therefore has
   12 parameters: the number of means (11 internal values), and the standard deviation of
   the additive Gaussian noise. To simplify things in our model, we can assumed the noise is
   independent, such that the variance adds across the 4 stimuli, meaning a the standard
   deviation parameter actually describes the total noise variance on each trial. As a first
   step, one could simulate this model (taking 1000 samples of noise per trial, adding this
   to the difference in diferences, and then comparing this value to 0; the tutorial
   [Psychometrics → Types of decisions → Detection: 2AFC](psy-detection-2afc.md) is one
   example of this), and check how the model responds by averaging the simulations and
   plotting the same way as you did at step 2 (set the initial means to the stimulus values,
   you could also try some exponential of this).
4. Fit the model: for this, the fastest way is to compute the likelihood directly, and add
   the log likelihoods of the observer's responses across all trials. In the case that the
   observer chose the first interval, the log likelihood is the the cumulative normal of the
   difference in differences divided by the standard deviation ( `phi( [(|a-b)| - (|c-d)|] /
   sigma )`; see Knoblauch & Maloney (2008) equation 6). Plot the model with the best fitting
   parameters (using the simulation code from 3 if you prefer). Plot the 'perceptual scale'
   (the means fit to each stimulus).
5. What you probably just did was fit 12 parameters as instructed. Choose different starting
   parameters (multiply everything by 10). You might find different best parameters. Plot the
   model with these parameters, you will probably get the same plot. This is because the
   parameters are poorly constrained: there are multiple solutions. We fix this problem by
   setting the mean of stimulus value 1 to 0 and the mean of the stimulus value 11 to 1. You
   should now have 10 free parameters.
6. Try fitting this model again, but this time parameterising the scaling itself. Now the
   mean internal value for each stimulus should be `k.^x`, where k is the free parameter, and
   x is the actual stimulus value (`[0:0.1:0.9, 0.98]`). Now the model should have 2 free
   parameters. How do the predictions of this model compare to the model from step 5 (compare
   the model predictions and the perceptual scale)? How does the fit of the model compare
   (compute, for example, BIC).
7. How many trials would you need to fit this model? Run a parameter recovery analysis (if
   the fitting process doesn't take too long). One issue with standard parameter recovery
   analyses (where you simulate trials from the model and then fit these trials) is that it
   assumes all variability in your actual data comes from variability captured by the model.
   This is fine if what we want to know is simply: what is the noise limit and is the model
   identifiable. But in this situation, we have massively simplified our model to make it an
   imperfect but useful description of the underlying processes (the transformation to
   internal values might not be quite an exponential), so we might assume there is more
   variance in real data than in the simulated model. To assess how well this model might
   describe real data, we can use a bootstrapping approach: Take random permutations of
   trials from the actual data, and re-fit the model (if simulating the same number of
   trials, some will be randomly ommitted and others randomly repeated). Bootstrap over a
   smaller number of trials and calculate the variability in the recovered parameters. How
   does the number of trials affect the reliability of the model parameters (at what point do
   you start getting very different predcitions of behaviour from that sampled from this same
   individual)? (A simpler demonstration of the effect of the number of trials is given in
   [Psychometrics → Measuring → How many trials?](psy-measuring-trials.md))

## Reference

Knoblauch, K., & Maloney, L. T. (2008). MLDS: Maximum likelihood difference scaling in R.
*Journal of Statistical Software, 25*, 1–26.
<https://cran.r-project.org/web/packages/MLDS/vignettes/MLDS.pdf>
