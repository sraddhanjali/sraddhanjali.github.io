---
layout: page
title: Sensing + hardware setup 
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
    <h7><strong>Sensor type
</strong></h7>
<ul>
<li>Resistive flex sensors (flexible potentiometers)
</li>
</ul>

<h7><strong>Sensor placement
 </strong>
</h7>
<ul>
<li>
One flex sensor mounted along the length of each finger
</li>
<li> Sensors aligned to capture finger bend and flex during typing
</li>
<li>
Glove-based form factor ensures consistent placement across sessions
</li>
</ul>

<h7><strong>Sampling & data capture </strong>
</h7>
<ul>
<li>
Sampling rate: ~104 Hz
</li>
<li>Continuous time-series resistance values per finger
</li>
<li>Resistance increases proportionally with degree of finger bend
</li>
</ul>

<h7><strong>What was directly measured
</strong></h7>
<ul>

<li>Instantaneous finger bending dynamics (per finger, per time step)  </li>

</ul>

<h7><strong>What was inferred
</strong></h7>
<ul>

<li>User identity during PIN/password entry  </li>

<li>Finger coordination patterns, including non-typing fingers that move involuntarily during typing</li>

</ul>

<h7><strong>Why this setup matters
</strong></h7>
<ul>

<li>Moves sensing below keystrokes and wrist motion  </li>

<li>Captures biomechanical intent, not just interaction outcomes</li>

<li>Enables analysis of finger-level contribution and sensor count tradeoffs</li>

</ul>
</div>
    <div class="col-sm mt-3 mt-md-0">
     {% include figure.html path="assets/img/hardware1.png" title="example image" class="img-fluid rounded z-depth-1" %}
     {% include figure.html path="assets/img/4.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
{% include figure.html path="assets/img/featpca.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>


---


Gamified Wearable Data Collection:Smartwatch IMU
---


<div class="row">
    <div class="col-sm mt-3 mt-md-0">
    <h7><strong>Sensor type
</strong></h7>
<ul>
<li>Accelerometer
</li>
<li>Gyroscope
</li>
</ul>

<h7><strong>Sensor placement
 </strong>
</h7>
<ul>
<li>
Wrist-worn smartwatch
</li>
<li> Captures motion of the hand and wrist during touchscreen interactions
</li>
</ul>

<h7><strong>Sampling & data capture </strong>
</h7>
<ul>
<li>
Multi-axis motion data (linear acceleration + angular velocity)
</li>
<li>Continuous capture during:
</li>
<li>Gamified interactions
</li>
<li>Direct authentication pattern entry
</li>
</ul>

<h7><strong>What was directly measured
</strong></h7>
<ul>

<li>Wrist and hand movement trajectories during pattern execution  </li>

</ul>

<h7><strong>What was inferred
</strong></h7>
<ul>

<li>Authentication pattern similarity  </li>

<li>Feasibility of using gameplay-generated motion as training data</li>

<li>Risk of inferring secret patterns via benign-looking apps</li>

</ul>

<h7><strong>Why this setup matters
</strong></h7>
<ul>

<li>Demonstrates ecological validity: sensing during natural interaction, not lab-only tasks  </li>

<li>Highlights tradeoff between:
</li>

<li>Ease of deployment (wrist IMU)</li>

<li>Loss of finger-level specificity (vs glove-based sensing)</li>

</ul>
</div>
    <div class="col-sm mt-3 mt-md-0">
     
     {% include figure.html path="assets/img/project1smartwatch.png" title="example image" class="img-fluid rounded z-depth-1" %}
     {% include figure.html path="assets/img/sensordata.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
{% include figure.html path="assets/img/timestamps.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

---

Power Side-Channel Video Inference — Public Charging Hubs
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
    <h7><strong>Sensor type
</strong></h7>
<ul>
<li>External power measurement circuitry
</li>
<li>Measures voltage/current drawn during charging
</li>
</ul>

<h7><strong>Sensor placement
 </strong>
</h7>
<ul>
<li>
Embedded within or attached to public USB charging hubs
</li>
<li> No modification to the phone required
</li>
</ul>

<h7><strong>Sampling & data capture </strong>
</h7>
<ul>
<li>
Continuous power draw measurements during charging
</li>
<li>Captured while videos play on the smartphone
</li>
</ul>

<h7><strong>What was directly measured
</strong></h7>
<ul>

<li>Aggregate charging power consumption over time  </li>

</ul>

<h7><strong>What was inferred
</strong></h7>
<ul>

<li>Identity of videos being watched  </li>

<li>Effects of screen brightness, color dynamics, and device model</li>

<li>User media consumption behavior</li>

</ul>

<h7><strong>Why this setup matters
</strong></h7>
<ul>

<li>Turns infrastructure into a passive sensing adversary  </li>

<li>Exploits a signal users assume is non-informative</li>

<li>Demonstrates that privacy leakage can occur without malware or permissions</li>

</ul>
</div>
    <div class="col-sm mt-3 mt-md-0">
     {% include figure.html path="assets/img/datacoll.png" title="example image" class="img-fluid rounded z-depth-1" %}
     {% include figure.html path="assets/img/3.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
{% include figure.html path="assets/img/rawmeasure.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>


