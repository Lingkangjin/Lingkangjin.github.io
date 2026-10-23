---
layout: archive
permalink: /awards/
title: "Awards and recognition"
author_profile: true
redirect_from:
  - /year-archive/

# Keep the list ordered newest first: numbering counts down from the top.
# kind: award | grant | finalist (shown as a badge)
awards:
  - year: "2026"
    kind: "award"
    text: "Excellent course evaluation 2025/2026 for <i>Electricity Markets: Modeling and Optimization</i> (5LEP0), TU/e, the Netherlands (co-lecturer)"
  - year: "2026"
    kind: "finalist"
    text: "Best Paper Award finalist, TU/e Postdoc Association, for <i>Surrogate Models in Power System Scheduling Problems: Learning Active Constraints via Graph Neural Networks</i>"
  - year: "2026"
    kind: "grant"
    text: "<a href='https://eurotech-universities.eu/funding/eurotech-visiting-researcher-programme/' target='_blank' rel='noopener noreferrer'>EuroTech Visiting Researcher Grant</a> for a research visit to DTU Wind and Energy Systems, Denmark"
  - year: "2025"
    kind: "finalist"
    text: "Best PhD thesis finalist in energy systems, Italian Association of Turbomachinery and Energy Systems (AIMSEA)"
  - year: "2023"
    kind: "grant"
    text: "Erasmus+ grant for a research visit to Eindhoven University of Technology, the Netherlands"
  - year: "2022"
    kind: "grant"
    text: "Erasmus+ grant for a research visit to DTU Energy, Denmark"
  - year: "2018"
    kind: "award"
    text: "1st place, Formula SAE (Class 3), team design competition"
  - year: "2014"
    kind: "award"
    text: "<i>In Studiis Laus</i> award, Rotary Club, for excellence in high school"
  - year: "2014"
    kind: "award"
    text: "<i>Premio Due Valli</i> for young talent, for outstanding results in the high school final exam"
---

{%- assign prev_year = "" -%}
<div class="timeline">
{%- for a in page.awards -%}
  {%- if a.year != prev_year -%}
    {%- unless forloop.first %}</ul></div>{% endunless %}
  <div class="timeline__block">
    <div class="timeline__year">{{ a.year }}</div>
    <ul class="entry-list">
    {%- assign prev_year = a.year -%}
  {%- endif %}
      <li>
        <span class="entry-tag">[A{{ forloop.rindex }}]</span>
        {%- if a.kind == "grant" %} <span class="badge badge--info">Grant</span>{% elsif a.kind == "finalist" %} <span class="badge badge--upcoming">Finalist</span>{% else %} <span class="badge badge--new">Award</span>{% endif %}
        {{ a.text }}
      </li>
{%- endfor %}
    </ul>
  </div>
</div>
