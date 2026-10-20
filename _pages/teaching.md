---
layout: archive
title: "Teaching and supervision"
permalink: /teaching/
author_profile: true
teaching_courses:
  - date: "Mar 2026"
    title: "Optimization applications for system integration"
    course: "System Integration Project (5LEF0), MSc Sustainable Energy Technology"
    institution: "TU/e, NL"
  - date: "Mar 2026"
    title: "Market participation of renewable producers"
    course: "Electricity Markets: Modeling and Optimization (5LEP0), MSc Electrical Engineering"
    institution: "TU/e, NL"
  - date: "Dec 2025"
    title: "Energy storage and its role in power systems"
    course: "Electrical Power Systems for EE (5EWD0), MSc Electrical Engineering"
    institution: "TU/e, NL"
  - date: "Mar 2025"
    title: "Master lecture: How to build an optimization model"
    course: "System Integration Project (5LEF0), MSc Sustainable Energy Technology"
    institution: "TU/e, NL"
  - date: "Oct 2024"
    title: "Energy storage and its role in power systems"
    course: "Electrical Power Systems for EE (5EWD0), MSc Electrical Engineering"
    institution: "TU/e, NL"
  - date: "Mar 2022"
    title: "Energy storage systems and their management (taught in Italian)"
    course: "MSc Mechanical Engineering"
    institution: "UNIVPM, IT"
  - date: "Mar 2022"
    title: "Pyomo optimization model set-up"
    course: "MSc Mechanical Engineering"
    institution: "UNIVPM, IT"

phd_supervision:
  - name: "Ranier Alexsander Arruda Moura"
    title: "Copula-based synthetic profile generation for MV distribution networks"
    institution: "Eindhoven University of Technology"
    year: "2025 – present"
  - name: "Niek Brekelmans"
    title: "MV/LV power transformer reliability and aging analysis for system operations"
    institution: "Eindhoven University of Technology"
    year: "2025 – present"
  - name: "Yifan Zhang"
    title: "MV/LV cable reliability and aging analysis for system operations"
    institution: "Eindhoven University of Technology"
    year: "2025 – present"

msc_supervision:
  - name: "Shuai Feng"
    continued_phd: true
    title: "Grid-Code-Compliant Hybrid Renewable Energy Solutions for Data Centers: Optimal Sizing under Post-Fault Active Power Requirements"
    course: "MSc Sustainable Energy Technology"
    institution: "Eindhoven University of Technology"
    year: "2026"
  - name: "Yuanchun Chen"
    title: "Data-Driven Efficiency Parametrization from Operational Telemetry: Improved State-of-Energy Tracking and Aging-Aware Dispatch for Battery Energy Storage Systems"
    course: "MSc Sustainable Energy Technology"
    institution: "Eindhoven University of Technology"
    year: "2026"
  - name: "Chengyuan Guan"
    title: "Optimal Sizing of Hybrid Renewable Energy Solutions for Data Centers: Case Studies of Non-Firm Grid, Reduced- and Off-Grid Scenarios"
    course: "MSc Sustainable Energy Technology"
    institution: "Eindhoven University of Technology"
    year: "2025"
  - name: "Dennis Hollanders"
    title: "Graph Neural Networks for Distribution Network Reconfiguration Optimization"
    course: "Dept. of Industrial Engineering & Innovation Sciences"
    institution: "Eindhoven University of Technology"
    year: "2025"
  - name: "Stefan De Lange"
    continued_phd: true
    title: "Hybrid Heat Pump Optimization for Flexibility Provision: Modeling and Simulation"
    course: "Dept. of Electrical Engineering"
    institution: "Eindhoven University of Technology"
    year: "2024"
  - name: "Fabian Caipa Cure"
    title: "Adaptive Distributionally Robust Optimization for Residential Energy Management under Non-firm Capacity Contracts"
    course: "MSc Sustainable Energy Technology"
    institution: "Eindhoven University of Technology"
    year: "2024"
  - name: "Francesco Panara"
    title: "Study of Hydrogen-to-Power systems: state of the art of alkaline and PEM fuel cells and performance evaluation"
    course: "Dipartimento di Ingegneria Industriale e Scienze Matematiche"
    institution: "Università Politecnica delle Marche"
    year: "2023"
  - name: "Filippo Onori"
    continued_phd: true
    title: "Design and management of a BESS to provide flexibility service to the national electricity grid"
    course: "Dipartimento di Ingegneria Industriale e Scienze Matematiche"
    institution: "Università Politecnica delle Marche"
    year: "2023"
  - name: "Francesca Mennilli"
    continued_phd: true
    title: "Study of systems related to Power-to-Hydrogen: state of the art of the electrolyser and its modeling using Python"
    course: "Dipartimento di Ingegneria Industriale e Scienze Matematiche"
    institution: "Università Politecnica delle Marche"
    year: "2022"
  - name: "Luca Ciotti"
    title: "Study of systems related to Power-to-Hydrogen: state of the art of the storage and its modeling using Python"
    course: "Dipartimento di Ingegneria Industriale e Scienze Matematiche"
    institution: "Università Politecnica delle Marche"
    year: "2022"
---


## Teaching

{% comment %} Extract 4-digit year from date (e.g., 'Mar 2026' -> '2026') {% endcomment %}
{% assign t_years = "" | split: "" %}
{% for course in page.teaching_courses %}
  {% assign yr = course.date | split: " " | last %}
  {% assign t_years = t_years | push: yr %}
{% endfor %}
{% assign t_years = t_years | uniq | sort | reverse %}

<div class="timeline">
  {% for yr in t_years %}
    <div class="timeline__block">
      <div class="timeline__year">{{ yr }}</div>
      <ul class="entry-list">
        {% for course in page.teaching_courses %}
          {% assign c_year = course.date | split: " " | last %}
          {% if c_year == yr %}
            {% assign t_idx = forloop.rindex %}
            <li>
              <span class="entry-tag">[T{{ t_idx }}]</span> <span class="entry-date">{{ course.date }}:</span> <i>{{ course.title }}</i>, {{ course.course }}, {{ course.institution }}
            </li>
          {% endif %}
        {% endfor %}
      </ul>
    </div>
  {% endfor %}
</div>

## PhD supervision (support)

{% assign phd_years = page.phd_supervision | map: "year" | uniq | sort | reverse %}

<div class="timeline">
  {% for yr in phd_years %}
    {% assign yr_phds = page.phd_supervision | where: "year", yr %}
    <div class="timeline__block">
      <div class="timeline__year">{{ yr }}</div>
      <ul class="entry-list">
        {% for phd in yr_phds %}
          {% for global_phd in page.phd_supervision %}
            {% if global_phd.title == phd.title %}
              {% assign p_idx = forloop.rindex %}
            {% endif %}
          {% endfor %}
          <li>
            <span class="entry-tag">[P{{ p_idx }}]</span> <strong>{{ phd.name }}</strong>, <i>{{ phd.title }}</i>, {{ phd.institution }}.
          </li>
        {% endfor %}
      </ul>
    </div>
  {% endfor %}
</div>

## MSc thesis supervision

{% assign msc_years = page.msc_supervision | map: "year" | uniq | sort | reverse %}



<div class="timeline">
  {% for yr in msc_years %}
    {% assign yr_mscs = page.msc_supervision | where: "year", yr %}
    <div class="timeline__block">
      <div class="timeline__year">{{ yr }}</div>
      <ul class="entry-list">
        {% for msc in yr_mscs %}
          {% for global_msc in page.msc_supervision %}
            {% if global_msc.title == msc.title %}
              {% assign s_idx = forloop.rindex %}
            {% endif %}
          {% endfor %}
          <li>
            <span class="entry-tag">[S{{ s_idx }}]</span> <strong>{{ msc.name }}</strong>
            {% if msc.continued_phd %}
              <span class="badge badge--info" title="Continued with PhD studies">Continued to PhD</span>
            {% endif %}, <i>{{ msc.title }}</i>, {{ msc.course }}, {{ msc.institution }}.
          </li>
        {% endfor %}
      </ul>
    </div>
  {% endfor %}
</div>