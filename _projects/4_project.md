---
layout: page
title: Signal Processing & Feature Logic
description: 
img: assets/img/4.jpg
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

<h7><strong>Signal segmentation
</strong></h7>

<ul>
    <li>Continuous flex-sensor streams segmented by typing episode
    </li>
    <li>PIN entry → fixed-length numeric sequence
    </li>
    <li>Password entry → fixed-length alphanumeric sequence
    </li>
    <li>Segmentation aligned to task boundaries, not individual keystrokes
    </li>
    <li>Preserves inter-key motion dynamics
    </li>
</ul>

<h7><strong>Preprocessing decisions
 </strong>
</h7>
<ul>
    <li>Per-sensor normalization to account for:
         <ul>
            <li>Manufacturing variance across flex sensors
            </li>
            <li>Baseline resistance differences across users
            </li>
        </ul>
    </li> 
    <li>Temporal alignment across fingers to maintain coupled motion structure
    </li>
    <li>Minimal filtering to avoid smoothing out micro-bend dynamics
    </li>
</ul>

<h7><strong>Feature families used 
</strong>
</h7>

<ul>
    <li>
        <strong>Time-domain statistics</strong>
        <ul>
            <li>Mean, variance, range, RMS
            </li>
            <li>Captures individual bend amplitude and stability
            </li>
        </ul>
    </li>
    <li>
        <strong>Frequency-domain features</strong>
            <ul>
                <li>Dominant frequencies, spectral energy
                </li>
                <li>Reflects rhythmic finger motion during typing
                </li>
            </ul>
    </li>
    <li>
        <strong>Entropy-based features</strong>
            <ul>
                <li>Measures predictability vs irregularity of finger motion
                </li>
            </ul>
    </li>
    <li>
        <strong>Cross-finger correlation features</strong>
        <ul>
            <li>Quantifies coordination between fingers
            </li>
        </ul>
    </li>
</ul>


<ul>
    <li>Typing is not independent per finger. </li>
    <li>Even unused fingers exhibit involuntary motion driven by neuromuscular coupling. </li>
    <li> Aggregating statistics across multiple fingers and their correlations captures biomechanical signatures that keystroke timing alone cannot.  </li>
</ul>

</div>

<!-- 
Gamified Wearable Data Collection — Smartwatch IMU
---


<div class="row">
<h7><strong>Signal segmentation
</strong></h7>
<ul>
<li>
<strong>IMU streams segmented by:</strong>
    <ul>
        <li>Individual pattern executions
        </li>
        <li>Comparable gesture trajectories across modes (direct vs gamified)</li>
    </ul>
</li>
<li>Segments normalized by gesture duration to allow comparison</li> 
</ul>

<h7><strong>Preprocessing decisions
</strong></h7>

<ul>
<li>
<strong>Axis-wise normalization to handle:</strong>
    <ul>
        <li>Differences in wrist orientation</li>
        <li>User-specific wearing styles</li>
    </ul>
</li>
<li>Temporal resampling to align trajectories across executions</li>
<li>Gravity compensation to isolate dynamic motion</li>
</ul>

<h7><strong>Feature families used 
</strong></h7>

<ul>
    <li>
    <strong>Time domain motion features:</strong>
        <ul>
            <li>Mean acceleration </li>
            <li>Angular velocity variance</li>
            <li>Trajectory shape features</li>
            <li>Path consistency</li>
        </ul>
    </li>
</ul>

<ul>
    <li>
        <strong>Frequency-domain features</strong>
        <ul>
            <li>Captures smooth vs abrupt motion styles</li>
        </ul>
    </li>
</ul>

<ul>
    <li>The goal was not gesture recognition, but behavioral similarity across contexts. </li>
    <li>Features were chosen to be:
        <ul>
            <li>Invariant to superficial differences (speed, orientation)</li>
            <li>Sensitive to execution style shaped by muscle memory</li>
        </ul>
    </li>
</ul>
</div>


Power Side-Channel Video Inference — Charging Hubs
---

<div class="row">
<h7><strong>Signal segmentation
</strong></h7>
<ul>
    <li>Continuous power traces segmented into fixed-length windows
    </li>
    <li>Windows aligned to video playback intervals
    </li>
    <li>Overlapping windows used to capture temporal evolution
    </li>
</ul>

<h7><strong>Preprocessing decisions
 </strong>
</h7>
<ul>
    <li>
    Detrending to remove slow battery-charging effects
    </li>
    <li>Normalization to account for device-specific power baselines
    </li>
    <li>No aggressive filtering to preserve content-driven variation
    </li>
</ul>

<h7><strong>Feature families used </strong>
</h7>
<ul>
    <li>
    <strong>Time-domain statistics</strong>
        <ul>
            <li>Mean, variance, peak-to-peak power
            </li>
            <li>Frequency-domain features (PSD)
            </li>
            <li>Captures brightness and color transition dynamics
            </li>
        </ul>
    </li>
</ul>

<ul>
    <li><strong>Entropy features</strong>
    <ul>
        <li>Measures complexity of power fluctuations
        </li>
        <li>Hybrid time–frequency features
        </li>
        <li>Encode temporal structure of visual content
        </li>
        </li>
    </ul>
    </li>
</ul>

<h7><strong>Why these features
</strong></h7>
<ul>
    <li>Video content induces structured power variation driven by:  
        <ul>
            <li>Screen brightness changes</li>

            <li>Color composition</li>

            <li>Scene dynamics</li>
        </ul>
    </li>
</ul>

<ul>
<li>Spectral and entropy features were chosen because they:

<ul>
    <li>Abstract away raw pixel data</li>
    <li>Remain robust across volume changes</li>
    <li>Still preserve content-specific fingerprints</li>
</ul>
</ul>

</div> -->
