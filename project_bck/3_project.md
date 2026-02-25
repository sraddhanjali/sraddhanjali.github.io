---
layout: page
title: ml-driven smartphone privacy attack via power analytics
description: power based privacy gleaning side-channel attack
img: assets/img/3.jpg
importance: 3
github: https:github.com/sraddhanjali
category: machine learning
---

The rapid growth of smartphone usage has sparked
a proliferation of public phone-charging hubs to cater to
peoples’ growing charging needs. By virtue of being located
in public spaces, however, these hubs have the potential to
be manipulated by malicious actors who seek to use them as
a vehicle to launch cyberattacks against the users of these
hubs. In this paper, we show that if such a public charging
hub is rigged with a power measurement circuitry, the power
measurements could enable the inference of videos watched
by the user on the phone. Using a playlist of 100 YouTube
music videos, we show this kind of attack to classify the videos
with an accuracy of up to 94.49%. We rigorously examine
the dynamics of the attack using 5 different phone models,
16 screen brightness and volume configurations, and various
training configurations and show it to be highly effective
under a wide range of settings. Depending on the content of
such videos, the profile of the target, and the attacker’s aims
(e.g., government vs. private hacker), we argue that such an
attack could have far-reaching privacy implications. The paper
adds to the body of work highlighting power side-channels on
computing devices as a potent threat to user privacy.

<div class="col-sm mt-3 mt-md-0">
    {% include figure.html path="assets/img/3.jpg" title="Power based privacy attack" class="img-fluid rounded z-depth-1" %}
</div>
    

This paper designs and evaluates this line of attack. Specifically, we
make the following contributions:

1) **Studying the color underpinnings of the attack:**

At the lowest level, a music video can be cast as a combi-
nation of three color channels (R, G, and B) whose relative
intensities in each pixel location vary over time. As a
starting point towards understanding the origins of this line
of attack, we undertook a proof-of-concept experiment to
investigate whether each of the R, G, and B colors imprint
a unique pattern on the power measurements made within
the charging hub. To this end, we created three videos, each
of which had a single color, and studied their power patterns.
Our observations revealed the three videos to occupy three
fairly distinct clusters, providing us with the first evidence
that inherent differences in the brightness dynamics of each
of the R, G, and B colors translate into separable patterns
in the power drawn at the charger. Evidence from this ex-
periment strongly suggested that more sophisticated videos
(with time-varying colors and moving objects) might even
be more uniquely identifiable and paved the way for our
fully-fledged experiments on a large corpus of videos.

2) **Evaluation of attack based on 100 music videos:**

Following the promise depicted by our RGB experiment,
we extended our investigations to 100 fully-fledged music
videos. The videos were drawn from the BillBoard Hot 100
website from two timelines: week of June 29th, 2019
and June 27th, 2020. Using a catalog of fifty time
and frequency domain features extracted from the charging
power, we classified these videos with up to 94.49% test
accuracy.

3) **Sensitivity analysis of attack behavior:**

To further understand the dynamics of the attack, we played music
videos at sixteen different audio volumes and screen bright-
ness levels to observe their effects on the inference of music
videos. Variations in these attributes enabled us to evaluate
the threat posed to users having different viewing habits.
Results observed using Random Forest and Extra Trees
classifiers revealed that the attack success is driven by the
brightness of the screen and weakens with the decrease in
the phone brightness. However, the impact on the attack
with the changing volume levels does not reveal a distinct
pattern. We proceeded to execute this attack on a variety of
Android phone models: Google Pixel 2XL, OnePlus 5, OnePlus 5T, Samsung Galaxy S8+, and Sam-
sung Galaxy S9 under extensive training configurations.
We found that the attack performs best when phone models
match between train and test datasets but still performs
reasonably when phone models differ across training and
testing datasets.