---
layout: page
title: ml-driven wearables biometrics
description: work involving devising novel biometrics authentication mechanisms involving smartgloves with flex sensors
img: assets/img/2.jpg
importance: 2
github: https:github.com/sraddhanjali
category: machine learning
---

On Finger Stretching and Bending Dynamics as a Biometric Modality

Studies on the characterization of the dexterity of
fingers and hands improve the understanding of how humans
interact with computing devices. In this study, finger bending
patterns captured by flex sensors worn on the fingers are
characterized to build a biometric authentication system. The
modality uses an array of resistive sensors fitted in a smart glove
worn by users while typing. The study encompasses 55 users,
23 of them entered a 9-digit PIN on a laptop’s number pad,
and 32 of them typed a 10-length alphanumeric password on the
full-sized keyboard. The results demonstrate that the users are
authenticated using features built from the flex sensors relating
to their PIN and password with a mean EER score of 7.49% and
9.76%, respectively. We further assessed the potential of using
individual fingers to authenticate users in both the biometric
systems and found that even the fingers not used for typing ex-
hibited discriminative patterns due to movement dynamics during
the typing process. This assessment highlights the potential for
designing lightweight biometric modalities utilizing dexterity and
patterns based on fewer fingers.

<div class="col-sm mt-3 mt-md-0">
    {% include figure.html path="assets/img/2.jpg" title="Biometrics in Wearables" class="img-fluid rounded z-depth-1" %}
</div>

The contributions of the paper are summarized below:

1) **Introducing finger bending patterns as a biometric authentication modality:**
   
We study the use of finger
bending patterns as captured by flex sensors embedded
in hand gloves as a biometric authentication modality.
Based on experiments in which people entered PINs
(i.e., numeric inputs) and passwords (i.e., alphanumeric
inputs) onto a laptop keyboard, we show the modality to
attain Equal Error Rates (EERs) of between 7.49% and
9.76%. While these error rates might not be low enough
for a stand-alone authentication modality, they are com-
petitive with the state-of-the-art error rates seen with
other behavioral biometric modalities (e.g., keystroke
dynamics, gait, etc.). And it provides evidence for finger
bending patterns as having potential applications in
multi-modal systems that leverage multiple sources of
information for strong authentication. Such applications 
could be in the field of gaming or in medical settings
where gloves are inherently part of the gear worn during
interactions with technology.

2) **Sensitivity analysis of the performance of the finger bending biometric modality:**

To more deeply
understand the dynamics of this biometric modality, we
study how different key variables affect its performance.
For example, we study the contribution of individual
fingers to the overall system performance, providing an
interesting perspective of which fingers more uniquely
identify users during typing. We also study the use of
one glove (such as in PIN entry on the number pad)
vs. two gloves (such as in password entry on the entire
keyboard), two alternate configurations that practitioners
using this system could choose from in practice. Finally,
to understand how different users contribute to the con-
solidated system error rate, we also examine and discuss
the EER score distributions across the population.