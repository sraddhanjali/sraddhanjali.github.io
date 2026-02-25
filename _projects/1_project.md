---
layout: page
title: Research Design
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

Finger Bending Biometrics (Smart Glove)
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
    <h7><strong>Problem being addressed
</strong></h7>
<ul>
<li>Most behavioral biometrics for typing authentication rely on observable outcomes of motion </li>
<li>
keystroke timings or coarse hand movement using IMU sensors 
</li>
<li>rather than the underlying biomechanics of fingers that generate those actions. 

</li>
</ul>

<h7><strong>Why simpler approaches weren’t enough
 </strong>
</h7>
<ul>
<li>
Prior work using keystroke dynamics captures when keys are pressed but ignores how fingers move between presses.
</li>
<li> Wrist-worn sensors improve coverage but still treat the hand as a rigid unit, missing fine-grained finger articulation.
</li>
<li>
As a result, these approaches collapse rich motor behavior into low-dimensional signals, limiting discriminative power.
</li>
</ul>

<h7><strong>Why human behavior + sensing mattered </strong>
</h7>
<ul>
<li>
Human dexterity is expressed at the finger level: subtle differences in bend, flex, and coordination emerge even when users type the same content. 
</li>
<li>These micro dynamics are involuntary and difficult to consciously mimic, making them attractive for behavioral authentication but only if they can be sensed directly.</li></ul>


<h7><strong>Key research question
</strong></h7>
<ul>

<li>Can finger bending dynamics captured directly via flex sensors
serve as a reliable and discriminative biometric signal during typing?  </li>

<li> Rather than optimizing classifiers on existing signals, this work identifies a missing sensing layer in typing biometrics and introduces finger-level biomechanics as a new behavioral modality.</li>

</ul>
</div>
    <div class="col-sm mt-3 mt-md-0">
     {% include figure.html path="assets/img/project1a.png" title="example image" class="img-fluid rounded z-depth-1" %}
     {% include figure.html path="assets/img/project1b.png" title="example image" class="img-fluid rounded z-depth-1" %}
{% include figure.html path="assets/img/project1c.png" title="example image" class="img-fluid rounded z-depth-1" %}
    
    </div>
</div>

---

Power Side-Channel Video Inference (Public Charging Hubs)
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
    <h7><strong>Problem being addressed
</strong></h7>
<ul>
<li>Public USB charging hubs are widely assumed to be passive infrastructure that pose little privacy risk beyond malware-based attacks.
</li>
</ul>

<h7><strong>Why simpler threat models weren't enough
 </strong>
</h7>
<ul>
<li>
Most charging-related security concerns focus on data-line compromise (e.g., juice jacking). 

</li>
<li>
These models overlook the fact that power delivery itself is an observable signal
</li>
<li>one that can be monitored without modifying the phone or user behavior.
</li>
</ul>

<h7><strong>Why human behavior + sensing mattered </strong>
</h7>
<ul>
<li>
Video consumption is tightly coupled to human preferences, beliefs, and emotional states. </li>

<li> Meanwhile, modern displays dynamically modulate brightness and color content, creating time-varying power signatures. </li>
<li> When these two facts intersect, a seemingly benign sensor
</li>
<li>a power meter can become a privacy-invasive inference tool.
</li>
</ul>

<h7><strong>Key research question
</strong></h7>
<ul>

<li>Can power measurements taken at a public charging hub be used to infer which video a user is watching on their phone?  </li>

<li>This work reframes charging infrastructure as a side-channel sensor, exposing a gap between perceived safety and actual information leakage driven by human media consumption behavior.</li>

</ul>
</div>
    <div class="col-sm mt-3 mt-md-0">
    {% include figure.html path="assets/img/datacoll.png" title="example image" class="img-fluid rounded z-depth-1" %}
     {% include figure.html path="assets/img/3.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
     
{% include figure.html path="assets/img/project1d.png" title="example image" class="img-fluid rounded z-depth-1" %}
    
    </div>
</div>

---


Gamification as a Data Collection and Attack Vector (Wearables)
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
    <h7><strong>Problem being addressed
</strong></h7>
<ul>
<li>High-quality behavioral data collection for wearable systems is expensive, time-consuming, and dependent on sustained participant engagement.
</li>
</ul>

<h7><strong>Why simpler approaches weren't enough
 </strong>
</h7>
<ul>
<li>
Traditional lab-based protocols are monotonous and fail to scale, especially for machine learning models that require large, diverse datasets. 
</li>
<li>Simply asking users to repeat actions often produces fatigue-driven artifacts that distort natural behavior.
</li>
</ul>

<h7><strong>Why human behavior + sensing mattered </strong>
</h7>
<ul>
<li>
Games naturally exploit reward, curiosity, and flow
core aspects of human psychology. 
</li>
<li>When coupled with wearable sensors, they can elicit authentic, repeated motor behavior without explicit user awareness of data collection.
</li>
</ul>

<h7><strong>Key research questions
</strong></h7>
<ul>

<li>Does gamified interaction preserve the behavioral patterns needed for wearable authentication?  </li>

<li>If so, could the same mechanism be exploited by an adversary to extract sensitive behavioral secrets?</li>

<li>This work treats gamification not just as a UX tool, but as a behavioral amplifier
</li>
<li>capable of both enabling scalable sensing and introducing new privacy risks.</li>

</ul>
</div>
    <div class="col-sm mt-3 mt-md-0">
     {% include figure.html path="assets/img/relwork.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
       
        {% include figure.html path="assets/img/project1smartwatch.png" title="example image" class="img-fluid rounded z-depth-1" %}
        {% include figure.html path="assets/img/project1gamification.png" title="example image" class="img-fluid rounded z-depth-1" %}
</div>
</div>

