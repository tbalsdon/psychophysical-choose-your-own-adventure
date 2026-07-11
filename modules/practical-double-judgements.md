---
title: "Practical: modelling double-judgements"
short_title: Double-judgements practical
---

# Practical exercise — modelling double-judgements

:::{note} Relevant material
This practical builds on a few of the tutorials: [Double-knob designs](psy-double-knob.md)
(Psychometrics), [fitting psychometric functions](psy-measuring-fitting.md), and the
bivariate Gaussian in the [rating response](sdt-rating-response.md) (Signal Detection
Theory). Links to the specific pages are included in the instructions below.
:::

In this practical we will explore the psychophysics of double-judgements further. An
introduction to double-judgements is described in the [Double-knob designs](psy-double-knob.md)
tutorial under 'Psychometrics'.

Double-judgement experiments ask an observer to make two different judgements about the
same evidence. This helps us understand the underlying decision-space — how the
observer's internal variable might be a transformation of the external properties of the
stimulus.

This practical is designed to highlight:

- The same information provides different evidence depending on the nature of the decision
- How to describe different kinds of decisions made about the same information
- How computational models can be developed and compared to test suboptimalities affecting
  decision-making

We will work with real data from Balsdon & Clifford (2017). The data is available in the
csv file 'Practical_doubleJudgements_data.csv'.

::::{grid} 1 1 1 1
:::{card} ⬇️ Download the data
:link: https://raw.githubusercontent.com/tbalsdon/psychophysical-choose-your-own-adventure/main/data/Practical_doubleJudgements_data.csv
**Practical_doubleJudgements_data.csv** — 14 columns, 1 header row, 4608 trials (~245 KB).
Opens in the browser — use your browser's *Save as…* (or right-click → *Save link as…*)
to download it.
:::
::::

## The data

The data file has 14 columns, one header row, and 4608 rows of data. Each row contains the
information of one trial, on which two responses were made to indicate the choice on
Detection and Identification tasks. The presented stimuli were avatar faces, with the
angular offset of the eyes precisely controlled to indicate different directions of gaze.
Each trial two stimuli were presented, one with direct gaze, and the other with gaze
offset to the left or right. The detection task was to detect which of the two faces had
offset (not direct) gaze (first or second). The identification task was to identify the
direction of offset gaze (left or right). There were four participants with 1152 trials
each.

Here is a fuller description of the columns:

1. **Block:** Each participant completed 2 sessions, each with 3 blocks of 192 trials.
   Blocks are numbered 1-3, each participant has two of each block number (over the two
   sessions).
2. **Trial:** trial number within each block 1- 192. With six blocks total, each
   participant has six trials labeled 1, for example.
3. **Stimulus:** This is the gaze deviation (in degrees) of the stimulus without direct
   gaze. Negative values are leftward, positive values are rightward gaze directions. When
   the value is less than 0, the correct identification response is 1, when it is
   greater than 0, the correct identification response is 2.
4. **Offset:** The absolute value of Stimulus. (This can be used to calculate proportion
   correct)
5. **fliplr:** This is to indicate whether the stimulus was one which had been flipped
   along the vertical plane (to control for any asymmetries in the face). The left-right
   direction of gaze indicated in column three is the direction of gaze post-flipping (the
   direction presented to the observer). So this column can be ignored.
6. **Order:** Whether the target (offset gaze stimulus) was presented first or second.
7. **Ident Resp:** The identification response: 1 = left, 2 = right. This is correct on
   trials where the response is 1 and the value in the stimulus column (3) is less than 0,
   and on trials where the response is 2 and the value in the stimulus column (3) is
   greater than 0.
8. **Detect Resp:** The detection response: 1 = first, 2 = second. This is correct when it
   is the same as the value in the Order column (6).
9. **Ident correct:** Whether the identification response (column 7) was correct.
10. **Detect correct:** Whether the detection response (column 8) was correct.
11. **Ident RT:** The response time for the identification response.
12. **Detect RT:** the response time for the detection response.
13. **Question condition:** The order in which the responses were given: 1 = identification
    first, 2 = detection first.
14. **Participant ID:** There are four participants, labelled S01, S02, S03, and S04

## Instructions

1. Download the data and ensure you understand the columns (described in more detail
   above).
2. Plot the data for each participant separately: plot the proportion of 'right' responses
   (identification; column 7) as a function of Stimulus (column 3); plot the proportion of
   'second' responses (detection; column 8) as a function of the difference in Stimulus for
   the first and second faces (when Order (column 6) is 1, the second stimulus was 0 and the
   first had the value in Stimulus (column 3), when Order (column 6) is 2, the second
   stimulus had the value in Stimulus (column 3) and the first was 0).
3. Fit psychometric functions to describe these proportions of responses (See
   [Psychometrics → measuring → fitting](psy-measuring-fitting.md) for an example). Do any
   points appear to diverge from the prediction of the psychometric function (one way to do
   this is to calculate a confidence interval on the proportion assuming a binomial
   distribution).
4. (Advanced) Create a model to describe both responses: each trial, the decision evidence
   is sampled from a bivariate Gaussian distribution with means equal to the stimulus
   strength in each interval, variance as a free parameter, and zero covariance. Simulate
   Identification and Detection responses (either by sampling or directly calculating the
   probability of responses) for each Stimulus. (Hint: for identification, this is the
   density above the negative diagonal - x-y>0; for detection, this is the sum of densities
   under the conjunction of both diagonals - x^2-y^2>0). Plot the model proportion of
   responses for different values of variance. (An example of a bivariate Gaussian is in
   [Signal Detection Theory → The rating response](sdt-rating-response.md)).
5. Fit the model to each participant's data (a single free parameter describing the
   variance of the bivariate Gaussian). To do this, you should calculate the negative log
   likelihood of the participants responses, and use a minimisation algorithm to minimise
   the sum of negative log likelhoods across both response types and all trials. If you
   simulated at step 4, you can do this by estimating the probability of the participant's
   response given 1000 simulated samples. If you computed the probabilities at step 4, this
   will be much faster. Plot the model with the best fitting parameters ontop of the human
   data.
6. Add another free parameter to your model: a correlation in the noise across the stimuli
   on each trial. Does this model describe the data better (compute, for example, the
   Bayesian Information Criterion)?
7. Add some bias to your model: a) a bias to perceive gaze as more or less rightward than
   it really is (a parameter that adds some constant to the value 'Stimulus'); b) a bias to
   select the first interval in the detection task (a parameter that increases the absolute
   value of the mean of the second interval by some constant). Do either of these
   parameters improve the description of the data?
8. (Very advanced) Is there a transformation of the decision evidence that allows the
   observer to make both the Identification and Detection decisions on the same,
   1-dimensional, axis?

## Reference

Balsdon, T., & Clifford, C. W. (2017). Detecting and identifying offset gaze. *Attention,
Perception, & Psychophysics, 79*(7), 1993–2006.
