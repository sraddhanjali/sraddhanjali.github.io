---
layout: page
title: Research outcomes
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
    <h7><strong>Key Findings
</strong></h7>
    <ul>
        <li>2D embedding (PCA / t-SNE) of multi-finger flex features, colored by user
        </li>
        <li>Optional inset: same plot using single-finger vs multi-finger features
        </li>
        <li>
        Finger bending signals formed separable user-specific clusters, even when considering fingers that were not directly pressing keys.
        </li>

        <li>
        Typing induces coordinated, involuntary finger motion driven by neuromuscular coupling, meaning identity cues emerge from how fingers move together, not just from keypress timing or active fingers.
        </li>
  
    <li>Error rates are not sufficient for standalone authentication, and glove-based sensing introduces wearability and calibration constraints, positioning this modality best as a complementary signal rather than a replacement.  </li>

</ul>
</div>

<div class="col-sm mt-3 mt-md-0">
     {% include figure.html path="assets/img/featpca.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
     {% include figure.html path="assets/img/bending_res.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
{% include figure.html path="assets/img/authres.jpg" title="example image" class="img-fluid rounded z-depth-1" %}

</div>
</div>

---

Gamified Wearable Data Collection — Smartwatch IMU
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
    <h7><strong>Key Findings
</strong></h7>
<ul>
    <li>Trained on direct execution → tested on direct execution
    </li>
    <li>Trained on gamified execution → tested on direct execution
    </li>
    <li>
    Motion patterns collected during gameplay remained predictive of authentication patterns, though with measurable drift compared to directly executed inputs.
    </li>
    <li>
    Core motor habits persist across interaction contexts, allowing gamified tasks to preserve behavioral signatures even when user intent and attention differ.
    </li>

   <li>Gamification alters execution dynamics and lowers fidelity in some cases, while also introducing a new attack surface where benign-looking apps can covertly collect sensitive behavioral data.  </li>

</ul>
</div>
    <div class="col-sm mt-3 mt-md-0">
         {% include figure.html path="assets/img/svmbar.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    {% include figure.html path="assets/img/userlvlsvm.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
</div>
</div>

---

Power Side-Channel Video Inference — Charging Hubs
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
    <h7><strong>Key Findings
</strong></h7>
<ul>

    <li>
    Videos could be identified with high accuracy from charging power traces alone, under realistic brightness, volume, and device conditions.
    </li>

    <li>
    Visual content drives structured brightness and color transitions on modern displays, which imprint stable spectral and entropy patterns onto power consumption observable at the charger.
    </li>


    <li>Attack effectiveness degrades at low brightness and across mismatched device models, indicating that inference relies on a combination of content structure and hardware characteristics, not a universal leakage channel.  </li>

</ul>
</div>
    <div class="col-sm mt-3 mt-md-0">
         {% include figure.html path="assets/img/rawmeasure.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
         {% include figure.html path="assets/img/respower.png" title="example image" class="img-fluid rounded z-depth-1" %}
        
    </div>
</div>
