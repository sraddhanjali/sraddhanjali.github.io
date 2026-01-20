---
layout: portfolio
title: Biometrics Work
description: Gamification of Wearable Data Collection: A Tool for both Friend and Foe
img: asset/img/1.jpg
importance: 1
category: Biometrics
---

Games are designed to build on certain inherently reward centered
aspects of our psychology. This encourages the user to keep
playing and engaging in the entertainment for just a bit longer. In
this paper we explore the way in which gamification can be used
to benefit researchers aiming to collect large amounts of data from
sometimes less than enthusiastically motivated participants.
We also investigate the risks associated with such mechanisms for
data collection and how malicious entities could use these same
methods to trick users into exposing private information. Across
several experiments used to measure the cross-applicable nature
of the data we collected, we demonstrate that a gamified version
of a data collection tool could be used to predict the pattern used
to unlock a phone.


The contributions of this paper are summarized below:
1.** Studying gamification, as a means to ease data
collection for wearable applications:** 
Taking the case
of pattern execution at the authentication screen, we
design an experiment that gamifies the data collection
process and study the similarity between the patterns
executed in these two cases. At the heart of this
experiment is a gaming app that we built in such a way
to mimic elements of the popular Flow Free app [36]
that lend themselves to the pattern entry process. We
find that depending on the specific scenario evaluated,
gaming might hold promise as a means for collection of
wearable sensor data in experiments involving wrist
movement dynamics similarly to our experiment.
2. **Gamification as a tool for an adversary:**

We take the case of a “bad guy” who posts a malicious gaming app
on the app market (e.g., on Google Play) to evaluate
how well such an app could perform at predicting a
user's authentication pattern. The assumption in this
case is that the app advertises a benign (gaming)
functionality, but yet has underlying behavior that
captures gaming patterns and compares them with the
user's pattern at login time. Through the application of
machine learning to the sensor data, we find that the
adversary could reliably infer the user's authentication
pattern using the game. To our knowledge we are the
first to study the question of a gaming app which uses
gaming patterns as training data that is later used to
decode the user's pattern.
