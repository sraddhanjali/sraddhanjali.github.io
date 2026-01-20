
---
layout: page
permalink: /projects/
title: Projects
description: work by categories
years: [2021, 2020, 2019]
nav: true
nav_order: 6
---
<!-- _pages/publications.md -->
<div class="projects">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f {{ site.scholar.bibliography }} -q @*[year={{y}}]* %}
{% endfor %}

</div>
