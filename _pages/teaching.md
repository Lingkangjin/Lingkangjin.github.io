---
layout: archive
permalink: /teaching/
author_profile: true
teaching_courses:
  - date: "Mar 2026"
    title: "Optimization application for the system integration"
    course: "System integration project (5LEFO), Msc. in Sustainable Energy Technology"
    institution: "TU Eindhoven, NL"
  - date: "Mar 2026"
    title: "Market participation of renewable producers"
    course: "Electricity markets: modeling and optimization (5LEP0), MSc Electrical Engineering"
    institution: "TU Eindhoven, NL"
  - date: "Dec 2025"
    title: "Energy storage and their role in the power systems"
    course: "Electrical power system for EE (5EWD0), MSc Electrical Engineering"
    institution: "TU Eindhoven, NL"
  - date: "Mar 2025"
    title: "Master Lecture: How to build an optimization model"
    course: "System integration project (5LEFO), Msc. in Sustainable Energy Technology"
    institution: "TU Eindhoven, NL"
  - date: "Oct 2024"
    title: "Energy storage and their role in the power systems"
    course: "Electrical power system for EE (5EWD0), MSc Electrical Engineering"
    institution: "TU Eindhoven, NL"
  - date: "Mar 2022"
    title: "Sistemi di accumulo e loro gestione"
    course: "MSc Mechanical Engineering"
    institution: "UNIVPM, IT"
  - date: "Mar 2022"
    title: "Pyomo optimization model set-up"
    course: "MSc Mechanical Engineering"
    institution: "UNIVPM, IT"

phd_supervision:
  - name: "Ranier Alexsander Arruda Moura"
    title: "Copula based synthetic profiles generation for the MV distribution networks"
    institution: "Eindhoven University of Technology"
    year: "2025-present"
  - name: "Niek Brekelmans"
    title: "MV/LV power transformer reliability and aging analysis for the system operations"
    institution: "Eindhoven University of Technology"
    year: "2025-present"
  - name: "Yifan Zhang"
    title: "MV/LV cables reliability and aging analysis for the system operations"
    institution: "Eindhoven University of Technology"
    year: "2025-present"

msc_supervision:
  - name: "Shuai Feng"
    title: "Grid-Code-Compliant Hybrid Renewable Energy Solutions for Data Centers: Optimal Sizing under Post-Fault Active Power Requirements"
    course: "MSc Sustainable Energy Technology"
    institution: "Technical University of Eindhoven"
    year: "2026"
  - name: "Yuanchun Chen"
    title: "Data-Driven Efficiency Parametrization from Operational Telemetry: Improved State-of-Energy Tracking and Aging-Aware Dispatch for Battery Energy Storage Systems"
    course: "MSc Sustainable Energy Technology"
    institution: "Technical University of Eindhoven"
    year: "2026"
  - name: "Chengyuan Guan"
    title: "Optimal Sizing of Hybrid Renewable Energy Solutions for Data Centers: Case Studies of Non-Firm Grid, Reduced- and Off-Grid Scenarios"
    course: "MSc Sustainable Energy Technology"
    institution: "Technical University of Eindhoven"
    year: "2025"
  - name: "Dennis Hollanders"
    title: "Graph Neural Networks for Distribution Network Reconfiguration Optimization"
    course: "Dept. of Industrial Engineering & Innovation Sciences"
    institution: "Technical University of Eindhoven"
    year: "2025"
  - name: "Stefan De Lange"
    title: "Hybrid Heat Pump Optimization for Flexibility Provision: Modeling and Simulation"
    course: "Dept. of Electrical Engineering"
    institution: "Technical University of Eindhoven"
    year: "2024"
  - name: "Fabian Caipa Cure"
    title: "Adaptive Distributionally Robust Optimization for Residential Energy Management under Non-firm Capacity Contracts"
    course: "MSc Sustainable Energy Technology"
    institution: "Technical University of Eindhoven"
    year: "2024"
  - name: "Francesco Panara"
    title: "Study of Hydrogen-to-Power systems: state-of-the-art of alkaline and PEM fuel cells and performance evaluation"
    course: "Dipartimento di Ingegneria Industrial e Scienze Matematiche"
    institution: "Universita' Politecnica delle Marche"
    year: "2023"
  - name: "Filippo Onori"
    title: "Design and management of a BESS to provide flexibility service to the national electricity grid"
    course: "Dipartimento di Ingegneria Industrial e Scienze Matematiche"
    institution: "Universita' Politecnica delle Marche"
    year: "2023"
  - name: "Francesca Mennilli"
    title: "Study of systems related to Power-to-Hydrogen: state of art of the electrolyser and its modeling using Python"
    course: "Dipartimento di Ingegneria Industrial e Scienze Matematiche"
    institution: "Universita' Politecnica delle Marche"
    year: "2022"
  - name: "Luca Ciotti"
    title: "Study of systems related to Power-to-Hydrogen: state of art of the storage and its modeling using Python"
    course: "Dipartimento di Ingegneria Industrial e Scienze Matematiche"
    institution: "Universita' Politecnica delle Marche"
    year: "2022"
---

<style>
  .compact-list {
    list-style-type: none;
    padding-left: 0;
  }
  .compact-list li {
    margin-bottom: 12px;
    line-height: 1.4;
  }
</style>

## Teaching

<ul class="compact-list">
  {% for course in page.teaching_courses %}
  <li>
    <strong>[T{{ forloop.rindex }}]</strong> {{ course.date }}: <i>{{ course.title }}</i>, {{ course.course }}, {{ course.institution }}
  </li>
  {% endfor %}
</ul>

<hr>

## Supervision

**PhD Thesis Supervision (support)**
<ul class="compact-list">
  {% for phd in page.phd_supervision %}
  <li>
    <strong>[P{{ forloop.rindex }}]</strong> <strong>{{ phd.name }}</strong>, <i>{{ phd.title }}</i>, {{ phd.institution }}, {{ phd.year }}.
  </li>
  {% endfor %}
</ul>

**MSc Thesis Supervision**
<ul class="compact-list">
  {% for msc in page.msc_supervision %}
  <li>
    <strong>[S{{ forloop.rindex }}]</strong> <strong>{{ msc.name }}</strong>, <i>{{ msc.title }}</i>, {{ msc.course }}, {{ msc.institution }}, {{ msc.year }}.
  </li>
  {% endfor %}
</ul>