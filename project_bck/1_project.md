---
layout: page
title: Gamification of Wearable Data Collection A Tool for both Friend and Foe
description: work involving gamifiying mobile apps for data collection for ML-based case study that expose privacy risks
img: assets/img/1.jpg
importance: 1
github: https:github.com/sraddhanjali
category: machine learning

---

Introduction
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/7.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
        <div class="caption">
            User authenticating on a device using pattern lock 
        </div>
    </div>
     <div class="col-sm mt-3 mt-md-0">
           <b>Question 1:</b><br>
           Are the wrist movement dynamics similar when data is collected from pattern execution at the authentication screen and a gamified version of the pattern entry mechanism?     
    </div>
         <div class="col-sm mt-3 mt-md-0">
           <b>Question 2:</b> <br> 
           Can user's APL patterns be decoded by an adversarial gaming app through underlying sensor data?
    </div> 
</div>

---

Related Work
---
<div class="justify-align-center">
            {% include figure.html path="assets/img/relwork.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
            <div class="caption">
                *UA (User Authentication), GR (Gesture Recognition), ST (Sleep Tracking), HAR (Human Activity Recognition)
            </div>
</div>

---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
           <h6><strong>Gamification of cybersecurity training and experiment data collection</strong></h6>
           <ul>
                <li><strong>De Nadai et al.</strong> used Foursquare API to get information about user behavior across Italian cities.</li>
                <li><strong>Dergous et al. </strong> proposed gamifying data collection experiments using in-game powerups. </li>
                <li><strong>Cechanowicz et al.</strong> designed three gamified versions of market research survey. </li>
            </ul>
    </div>  
    <div class="col-sm mt-3 mt-md-0">
       <h6><strong> Mining user inputs using sensor data</strong></h6>
       <h7><strong>Mining user inputs using smartphone sensor data</strong></h7>
        <ul> 
    <li><strong>Xu et al. </strong>used sensor data to learn motion change patterns of tap events for inference of keys on a number pad and PINs.</li>
        </ul>
        <h7><strong>
        Mining user inputs using smartwatch sensor data</strong></h7>
        <ul>
        <li><strong>Lu et al.</strong> inferred PINs and Android Pattern Locks (APL) drawn on the smartwatch.</li></ul>
    </div>
</div>


---

Sensing + Hardware Setups
--- 

A. Android Pattern Lock Mimicing App
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/9.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
        <div class="caption">
            23 pattern locks entered in lock screen on our Android App.
        </div>
    </div>
     <div class="col-sm mt-3 mt-md-0">
           {% include figure.html path="assets/img/sensordata.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
           <div class="caption">
           <b>IMU sensing on smartwatch:</b><br> 
           Dominant Right hand setup with smartwatch logging IMU sensor information. <br>
            Gyroscope: angular shifts in xy, yz, zy planes <br>
            Accelerometer: linear shifts in x, y, z direction <br>
            Timestap: ts in milliseconds
            Pattern label: a, b, c--w
           </div>
    </div>      
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/timestamps.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
       <div class="caption">
        <b>Timestamps log on smartphone:</b><br>
            Time stamps of start and end of patterns entered.
           Start of gesture: ts in milliseconds
           End of gesture: ts in milliseconds
       </div>
    </div>   
</div>
---

B. Gamified App Mimicing APL entries

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/10.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
        <div class="caption">
            A Google Play App: Free Flow The game asks users to connect similar color dots on a grid without colliding with other circle's path with patterns that form very similar to APL lock screen.
        </div>
            <div class="col-sm mt-3 mt-md-0">
            {% include figure.html path="assets/img/14.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
            <div class="caption">
                A completed APL like gesture on the game.
            </div>
        </div>
    </div>
     <div class="col-sm mt-3 mt-md-0">
          {% include figure.html path="assets/img/6.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
        <div class="caption">
            Our App: allows intersection with a moving ball that disappears as it traces a pattern. User follows the pattern as it disappears to complete a level.
        </div>
        <div class="col-sm mt-3 mt-md-0">
          {% include figure.html path="assets/img/12.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
        <div class="caption">
            Our game ends at each APL entry.
        </div>
    </div>
    </div>      
     <div class="col-sm mt-3 mt-md-0">
           {% include figure.html path="assets/img/11.gif" title="example image" class="img-fluid rounded z-depth-1" %}
            <div class="caption"> 
                Our Game in Action: A unity3D game designed for each 23 pattern locks. The pattern is not shown in the game, it is presented for illustration purposes.
            </div>
        </div> 
</div>
---


Data collection & Experiment Design
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <ul>
           <li> Number of participants (N): 24  </li>
           <li> Sessions/participants: 2 sessions/a day apart </li>
           <li>Task constraints: </li>
           <ul>
                <li> user entered 23 patterns explicitly in app P. </li>
                <li>played game containing 23 patterns in game G. </li>
            </ul>
        </ul>
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/experiment.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
        <div class="caption">
            Scenarios tested using data from app A and game G.
        </div>
    </div>   
</div>

<div class="row">
    <div class="col-sm mt-3 mt-md-0 justify-align-center">
        {% include figure.html path="assets/img/scenario1.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
        <div class="caption">
            Scenarios tested using data from app A and game G.
         </div> 
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/scenario2.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
        <div class="caption">
            Scenarios tested using data from app A and game G.
        </div> 
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/scenario3.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
        <div class="caption">
            Scenarios tested using data from app A and game G.
        </div> 
    </div>   
</div>

---


Signal processing & feature logic
---

<div class="row"> 
    <div class="col-sm mt-3 mt-md-0">
        <h6><strong>Segmentation of Raw Signals</strong></h6>
        <ul>
          <li>Both accelerometer and gyroscope data from a smartwatch are used.</li>
          <li>For each drawn pattern, a time-series segment is extracted.</li>
          <li>Each time series is preprocessed to remove noise and outliers.</li>
        </ul>
        <h6><strong>Feature Extraction</strong></h6>
            <ul>
              <li>Feature vectors are computed for each time series.</li>
              <li>Examples include Fast Fourier Transform (FFT), derivatives, and related features.</li>
            </ul>
    </div>
    <div class="col-sm mt-3 mt-md-0">
            <h6><strong>Training and Testing Scenarios</strong></h6>
            <ul>
              <li>Scenarios: I, II, III</li>
            </ul>
             <h6><strong>Classifiers</strong></h6>
            <ul>
              <li>
                <strong>Support Vector Machine (SVM)</strong>
                <ul>
                  <li>Kernel: Linear</li>
                  <li>Penalty parameter: C = 2</li>
                  <li>Probability estimates enabled</li>
                </ul>
              </li>
              <li>
                <strong>Logistic Regression (LR)</strong>
                <ul>
                  <li>Solver: libfgs</li>
                  <li>Loss function: Multinomial</li>
                  <li>Penalty parameter: C = 2</li>
                </ul>
              </li>
            </ul>
    </div>
    <div class="col-sm mt-3 mt-md-0">
        <table border="1" cellpadding="6" cellspacing="0" width="100%">
          <thead>
            <tr>
              <th>Feature Type</th>
              <th>Features</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Type A (time–freq domain)</td>
              <td>
                mean, standard deviation, mean absolute deviation, minimum, maximum,
                energy, interquartile range, entropy
              </td>
            </tr>
            <tr>
              <td>Type B (frequency-domain)</td>
              <td>
                spectral maximum index, spectral mean frequency,
                spectral skewness, spectral kurtosis
              </td>
            </tr>
            <tr>
              <td>Type C (inter-axis: xy, yz, xz)</td>
              <td>correlation</td>
            </tr>
            <tr>
              <td>Type D (all-axis: x, y, z)</td>
              <td>signal magnitude area</td>
            </tr>
          </tbody>
        </table>
    </div>
</div> 


---

Results
---

<div class="row">
 <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/result.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
        <div class="caption">
            Average accuracy from SVM classifier's cumulative top 3 guesses. 
        </div>
    </div>
 <div class="col-sm mt-3 mt-md-0">
        <ul>
        <li>Our study’s results are x% better than random guesser.</li>
<li>For 23 patterns, the random first guess probability is 4.34%.</li>
<li>From our study, we pick the lowest accuracy from all three scenarios to make the comparison.</li>
</ul>
    </div>
    </div>

---

Pattern Lock Inference Accuracy
---

<div class="row">
 <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/svmbar.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
 <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/lrbar.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>

</div>

<div class="row">
    <h7><strong> Observation</strong></h7>
    <ul> 
    <li>
    Scenario I performs 10-15% better than scenarios II and III.</li>
    <li>Scenario III performs better than scenario II only for LR classifier.</li>
    </ul>
</div>


<div class="row">
    <h7><strong>
    Implications:</strong></h7>
    <ul>
    <li>
    Game designed to collect data is feasible as shown by Scenario II and III. </li>
    <li>From LR, 76% of patterns are predicted within three guesses, whereas only 62% if using target’s data. </li>
    </ul>
</div>

---

User-level and Pattern-Level Performance
---



<div class="row">
 <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/userlvlsvm.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
 <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/patternlvllr.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

<div class="row">
<div class="col-sm mt-3 mt-md-0">
        <ul>
            <li>Scenario I performs far better than scenarios II and III for most users. </li>
            <li>
            80% of users had an accuracy of over 40% for the scenarios II and III. 
            </li>
        </ul>
    </div>
    <div class="col-sm mt-3 mt-md-0">
    <ul>
            <li>Scenario I performs far better than scenarios II and III for most users. </li>
            <li>
            80% of users had an accuracy of over 40% for the scenarios II and III. 
            </li>
        </ul>
        </div>

        </div>

---

Pattern Analysis
---

<div class="row">
<div class="col-sm mt-3 mt-md-0">
    <h7><strong>Patterns similar to one another harder to distinguish examples (r) and (s). </strong></h7>
    <div class="row justify-align-center">
    {% include figure.html path="assets/img/dis1.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <h7><strong>Pattern (f) frequently misclassified as (l), (n), (p), (w).
</strong></h7>
    <div class="row">
    {% include figure.html path="assets/img/dis2.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <h7><strong>Pattern (r) and (u) although similar, never misclassified.
</strong></h7>
    <div class="row">
    {% include figure.html path="assets/img/dis3.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="col-sm mt-3 mt-md-0">
{% include figure.html path="assets/img/conf.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
</div>
</div>

---

Conclusion and Future Work
---

<div class="row">
<ul>
<li>Gamification of data collection for malicious intent matches real world data collection scenarios. </li>
<li>Application of gamification for the purpose of malicious intent in data collection is plausible.</li>
</ul>
</div>

<h7><strong>Future Work:</strong></h7>
<div class="row">
<ul>
<li>
Study of gamification in another data collection setting.  </li>
<li>Study of another potential attack with gamification.</li>
</ul>
</div>
