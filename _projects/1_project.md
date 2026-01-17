---
layout: page
title: project 1
description: a project with a background image
img: biometrics_authentication.png
importance: 1
category: work
---

**Biometrics Research: 

Gamification of Wearable Data Collection: A Tool for both Friend and Foe**

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

    ---
    layout: page
    title: project
    description: a project with a background image
    img: /assets/img/12.jpg
    ---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/1.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/3.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/5.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Caption photos easily. On the left, a road goes through a tunnel. Middle, leaves artistically fall in a hipster photoshoot. Right, in another hipster photoshoot, a lumberjack grasps a handful of pine needles.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/5.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    This image can also have a caption. It's like magic.
</div>

You can also put regular text between your rows of images.
Say you wanted to write a little bit about your project before you posted the rest of the images.
You describe how you toiled, sweated, *bled* for your project, and then... you reveal its glory in the next row of images.


<div class="row justify-content-sm-center">
    <div class="col-sm-8 mt-3 mt-md-0">
        {% include figure.html path="assets/img/6.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm-4 mt-3 mt-md-0">
        {% include figure.html path="assets/img/11.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    You can also have artistically styled 2/3 + 1/3 images, like these.
</div>


The code is simple.
Just wrap your images with `<div class="col-sm">` and place them inside `<div class="row">` (read more about the <a href="https://getbootstrap.com/docs/4.4/layout/grid/">Bootstrap Grid</a> system).
To make images responsive, add `img-fluid` class to each; for rounded corners and shadows use `rounded` and `z-depth-1` classes.
Here's the code for the last row of images above:

{% raw %}
```html
<div class="row justify-content-sm-center">
    <div class="col-sm-8 mt-3 mt-md-0">
        {% include figure.html path="assets/img/6.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm-4 mt-3 mt-md-0">
        {% include figure.html path="assets/img/11.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
```
{% endraw %}

---

## Related Projects

<style>
.projects-scroll-container {
  overflow-x: auto;
  overflow-y: hidden;
  white-space: nowrap;
  padding: 20px 0;
  margin: 20px 0;
  -webkit-overflow-scrolling: touch;
  scrollbar-width: thin;
  scrollbar-color: var(--global-theme-color) transparent;
}

.projects-scroll-container::-webkit-scrollbar {
  height: 8px;
}

.projects-scroll-container::-webkit-scrollbar-track {
  background: transparent;
}

.projects-scroll-container::-webkit-scrollbar-thumb {
  background-color: var(--global-theme-color);
  border-radius: 4px;
}

.projects-scroll-wrapper {
  display: inline-flex;
  gap: 20px;
  padding: 10px;
}

.projects-scroll-item {
  flex: 0 0 auto;
  width: 300px;
  min-width: 300px;
}

@media (max-width: 768px) {
  .projects-scroll-item {
    width: 250px;
    min-width: 250px;
  }
}
</style>

<div class="projects-scroll-container">
  <div class="projects-scroll-wrapper">
    {% assign project_titles = "project 2,project 3,project 4" | split: "," %}
    {% for title in project_titles %}
      {% assign project = site.projects | where: "title", title | first %}
      {% if project %}
        <div class="projects-scroll-item">
          {% if project.redirect %}
            <a href="{{ project.redirect }}">
          {% else %}
            <a href="{{ project.url | relative_url }}">
          {% endif %}
            <div class="card hoverable">
              {% if project.img %}
                {% include figure.html path=project.img alt="project thumbnail" %}
              {% endif %}
              <div class="card-body">
                <h3 class="card-title text-lowercase">{{ project.title }}</h3>
                <p class="card-text">{{ project.description }}</p>
                {% if project.github %}
                <div class="row ml-1 mr-1 p-0">
                  <div class="github-icon">
                    <div class="icon" data-toggle="tooltip" title="Code Repository">
                      <a href="{{ project.github }}"><i class="fab fa-github gh-icon"></i></a>
                    </div>
                  </div>
                </div>
                {% endif %}
              </div>
            </div>
          </a>
        </div>
      {% endif %}
    {% endfor %}
  </div>
</div>
