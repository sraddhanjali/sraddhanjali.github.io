---
layout: page
title: Data Collection & Experiment Design
description: 
img: assets/img/1.jpg
importance: 1
github: https:github.com/sraddhanjali
category: Research

---

<style>
  /* Purple color scheme - consistent across all projects */
  h2, h3, h4, h5, h6, h7 {
    background: linear-gradient(135deg, #9D4EDD 0%, #B509AC 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    color: #9D4EDD;
    font-weight: 700;
  }
  
  h5, h6, h7 {
    color: #B509AC;
    font-weight: 600;
  }
  
  /* Fallback for browsers that don't support background-clip */
  @supports not (-webkit-background-clip: text) {
    h2, h3, h4 {
      color: #9D4EDD;
    }
    h5, h6, h7 {
      color: #B509AC;
    }
  }
  
  /* Card-like styling for content divs */
  .row {
    margin-bottom: 2rem;
  }
  
  .row .col-sm {
    background: linear-gradient(135deg, rgba(157, 78, 221, 0.05) 0%, rgba(181, 9, 172, 0.05) 100%);
    border: 1px solid rgba(157, 78, 221, 0.15);
    border-radius: 12px;
    padding: 1.5rem;
    box-shadow: 0 4px 6px rgba(157, 78, 221, 0.1), 0 2px 4px rgba(181, 9, 172, 0.08);
    transition: transform 0.2s ease, box-shadow 0.2s ease;
    backdrop-filter: blur(10px);
  }
  
  .row .col-sm:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 12px rgba(157, 78, 221, 0.15), 0 4px 8px rgba(181, 9, 172, 0.12);
  }
  
  .row .col-sm ul {
    margin-bottom: 0;
  }
  
  .row .col-sm li {
    margin-bottom: 0.5rem;
  }
</style>

---

Finger Bending Biometrics — Smart Glove
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
    <h7><strong>Participants (N)
</strong></h7>
<ul>
<li>55 users total
</li>
<li>23 users: numeric PIN entry
</li>
<li>32 users: alphanumeric password entry
</li>
</ul>

<h7><strong>Sessions / repetitions
 </strong>
</h7>
<ul>
<li>
Multiple entries per user per condition
</li>
<li> Repeated trials per authentication task to capture intra-user variability
</li>
</ul>

<h7><strong>Task constraints </strong>
</h7>
<ul>
<li>
Users typed:
    </li>
    <li>A 9-digit PIN on a laptop number pad
    </li>
    <li>A 10-character password on a full-sized keyboard
    </li>
<li>Gloves worn consistently during typing to maintain sensor alignment
</li>
</ul>

<h7><strong>Variability intentionally captured
</strong></h7>
<ul>

<li>Differences between:  </li>

<li>Numeric vs alphanumeric typing</li>

<li>One-glove vs two-glove configurations</li>

<li>Finger-level variability, including non-typing fingers</li>

<li>Population-level spread via per-user EER distributions</li>

</ul>

<h7><strong>Design intent
</strong></h7>
<ul>

<li>Model how typing behavior varies within the same user, not just between users  </li>

<li>Stress-test the modality under realistic typing conditions rather than fixed scripts</li>

</ul>
</div>
    <div class="col-sm mt-3 mt-md-0">
    {% include figure.html path="assets/img/4.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
     {% include figure.html path="assets/img/2.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
     {% include figure.html path="assets/img/scenario1.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
{% include figure.html path="assets/img/scenario2.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
{% include figure.html path="assets/img/scenario3.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

---


Gamified Wearable Data Collection — Smartwatch IMU
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
    <h7><strong>Participants (N)
</strong></h7>
<ul>
<li>Multiple users (exact N varied by experiment)
</li>
</ul>

<h7><strong>Sessions / repetitions
 </strong>
</h7>
<ul>
<li>
Repeated pattern executions across:
</li>
<li>Traditional (explicit authentication) sessions
</li>
<li>Gamified interaction sessions
</li>
<li>Multiple repetitions per pattern per user
</li>
</ul>

<h7><strong>Task constraints </strong>
</h7>
<ul>
<li>
Users executed smartphone pattern-lock gestures in two modes:
</li>
<li>Direct authentication-style input
</li>
<li>Game-based interactions designed to mimic pattern trajectories
</li>
</ul>

<h7><strong>Variability intentionally captured
</strong></h7>
<ul>

<li>Behavioral drift between:  </li>

<li>Serious vs playful interaction contexts</li>

<li>Conscious vs incidental execution of patterns</li>

<li>Natural variability in wrist motion over repeated sessions</li>

</ul>

<h7><strong>Design intent
</strong></h7>
<ul>

<li>Test whether data collected "in the wild" (via games) preserves biometric fidelity  </li>

<li>Compare controlled vs ecologically valid behavior rather than assuming equivalence</li>

</ul>
</div>
    <div class="col-sm mt-3 mt-md-0">
     
     {% include figure.html path="assets/img/game.png" title="example image" class="img-fluid rounded z-depth-1" %}
{% include figure.html path="assets/img/ourgame.png" title="example image" class="img-fluid rounded z-depth-1" %}

{% include figure.html path="assets/img/11.gif" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

---


Power Side-Channel Video Inference — Charging Hubs
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
    <h7><strong>Participants / devices (N)
</strong></h7>
<ul>
<li>5 smartphone models
</li>
<li>100 distinct YouTube music videos
</li>
</ul>

<h7><strong>Sessions / repetitions
 </strong>
</h7>
<ul>
<li>
Multiple playback sessions per video
</li>
<li> Repeated measurements across configuration settings
</li>
</ul>

<h7><strong>Task constraints </strong>
</h7>
<ul>
<li>
Phones charged via instrumented charging hubs
</li>
<li>Videos played under controlled environmental settings
</li>
</ul>

<h7><strong>Variability intentionally captured
</strong></h7>
<ul>

<li>16 brightness levels  </li>

<li>16 volume levels</li>

<li>Cross-device generalization (train/test on same vs different phone models)</li>

<li>Temporal variation in video content and color dynamics</li>

</ul>

<h7><strong>Design intent
</strong></h7>
<ul>

<li>Probe robustness of inference under realistic user-controlled settings  </li>

<li>Identify which variables materially affect attack success vs which do not</li>

</ul>
</div>
    <div class="col-sm mt-3 mt-md-0">
    {% include figure.html path="assets/img/power3.png" title="example image" class="img-fluid rounded z-depth-1" %}
     {% include figure.html path="assets/img/power1.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

