---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

<p>
  <a class="btn btn--primary btn--text-black" href="{{ base_path }}/files/CV_Jin.pdf" download>
    Download latest CV (PDF)
  </a>
</p>




Education
======
**[E3]** Ph.D in industrial engineering with specialization in Energy Systems,  [Università Politecnica delle Marche](https://www.univpm.it/Entra/), 2020-2024

**[E2]** M.S. in Mechanical engineering with thermo-mechanical specialization, [Università Politecnica delle Marche](https://www.univpm.it/Entra/), 2017-2019

**[E1]** B.S. in Mechanical engineering, [Università Politecnica delle Marche](https://www.univpm.it/Entra/) , 2014-2017

Work experience
======
**[W3]** Jan 2024-Now: Postdoctoral Researcher *at* Eindhoven University of Technology (NL) with supervisors: Dr. [Nikolaos Paterakis](https://www.tue.nl/en/research/researchers/nikolaos-paterakis), Dr. [Phuong Nguyen](https://www.tue.nl/en/research/researchers/phuong-nguyen) and Dr.[Christina Papadimitriou](https://www.tue.nl/en/research/researchers/christina-papadimitriou)

**[W2]** Nov 2020-Oct 2023: Ph.D Researcher *at*  Università Politecnica delle Marche (IT) with supervisor: Prof. [Gabriele Comodi](https://www.univpm.it/Entra/Engine/RAServePG.php/P/320710010421/idsel/590/docname/GABRIELE%20COMODI) 

**[W1]** Dec 2019-Oct 2020: Engineering consultant *at* Whirlpool,  with supervisor: Piotr Rosiak


  
<style>
  /* Tooltip styling for Jekyll */
  .tooltip {
    position: relative;
    display: inline-block;
    border-bottom: 1px dotted #0366d6;
    color: #0366d6;
    cursor: help;
  }
  .tooltip .tooltiptext {
    visibility: hidden;
    width: 250px;
    background-color: #333;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 5px 10px;
    position: absolute;
    z-index: 1;
    bottom: 125%; 
    left: 50%;
    margin-left: -125px;
    opacity: 0;
    transition: opacity 0.3s;
    font-size: 0.85em;
    font-weight: normal;
  }
  .tooltip:hover .tooltiptext {
    visibility: visible;
    opacity: 1;
  }
  /* Styling for the interactive accordions */
  details {
    margin-bottom: 1rem;
    padding: 0.5rem;
    border-left: 4px solid #eaecef;
    background-color: #f6f8fa;
  }
  summary {
    font-weight: bold;
    cursor: pointer;
    font-size: 1.1em;
    outline: none;
  }
  summary:hover {
    color: #0366d6;
  }
  details > ul {
    margin-top: 0.8rem;
  }
</style>

## Technical Skills Portfolio

<details open>
  <summary>1. Energy Systems & Multi-Physics Modeling</summary>
  <ul>
    <li><strong>System-Level Simulation:</strong> Multi-physics modeling of <span class="tooltip">P2H<span class="tooltiptext">Power-to-Hydrogen: Converting electrical power into hydrogen gas via electrolysis.</span></span> systems, Alkaline electrolyzers, and Lithium-ion batteries (electrochemical modeling & degradation analysis).</li>
    <li><strong>Power Systems Analysis:</strong> Transmission/distribution power flow (<span class="tooltip">OPF<span class="tooltiptext">Optimal Power Flow: Mathematical optimization of power generation and routing.</span></span>), grid congestion management, and DER asset management.</li>
    <li><strong>Thermodynamic Assessment:</strong> Advanced fluid property modeling using <strong>CoolProp</strong>, <strong>RefProp</strong>, and <strong>Cantera</strong>.</li>
  </ul>
</details>

<details>
  <summary>2. Optimization & Mathematical Modeling</summary>
  <ul>
    <li><strong>Optimization Paradigms:</strong> Linear (LP), Mixed-Integer Linear (MILP), <span class="tooltip">MICP<span class="tooltiptext">Mixed-Integer Conic Programming: Used for complex, non-linear convex optimization problems.</span></span>, and Bilevel Optimization.</li>
    <li><strong>Energy Applications:</strong> Planning and scheduling optimization for complex energy networks.</li>
    <li><strong>Solvers:</strong> Expert proficiency in <strong>Gurobi</strong>, <strong>CPLEX</strong>, <strong>MOSEK</strong>, <strong>HiGHS</strong>, and <strong>Ipopt</strong>.</li>
  </ul>
</details>

<details>
  <summary>3. AI, Machine Learning & Data Science</summary>
  <ul>
    <li><strong>Data Science Pipeline:</strong> Exploratory Data Analysis (EDA), feature engineering, dimensionality reduction, and full ML pipeline integration.</li>
    <li><strong>Advanced AI Applications:</strong> <span class="tooltip">GNNs<span class="tooltiptext">Graph Neural Networks: Deep learning methods for data described by graphs (like power grids).</span></span> for optimization; Supervised/Unsupervised learning for energy time-series (load, weather, and price forecasting).</li>
    <li><strong>Explainability & Reporting:</strong> Model interpretation using <strong>SHAP</strong> and <strong>LIME</strong> for stakeholder reporting.</li>
  </ul>
</details>

<details>
  <summary>4. Mechanical Design & Physical Prototyping</summary>
  <ul>
    <li><strong>Computer-Aided Design (CAD):</strong> 3D modeling (<strong>SolidWorks</strong>, <strong>SolidEdge</strong>) and 2D drafting (<strong>AutoCAD</strong>, <strong>Rhinoceros</strong>).</li>
    <li><strong>Simulation (CFD):</strong> High-fidelity fluid dynamics using <strong>Ansys Fluent</strong> and <strong>Star-CCM+</strong>.</li>
    <li><strong>Workshop & Manufacturing:</strong> CNC programming, manual machining/milling, and carbon fiber lamination.</li>
  </ul>
</details>

<details>
  <summary>5. Programming & Software Engineering</summary>
  <ul>
    <li><strong>Language & Libraries:</strong> <strong>Python</strong> (Pandas, NumPy, PyTorch, SciPy, Pyomo, GeoPandas).</li>
    <li><strong>Visualization:</strong> Interactive dashboarding and plotting via <strong>Plotly</strong>, <strong>Seaborn</strong>, and <strong>Streamlit</strong>.</li>
    <li><strong>DevOps & CI/CD:</strong> Version control (<strong>Git/GitHub</strong>), containerization (<strong>Docker,Podman</strong>), automated workflows (<strong>GitHub Actions</strong>), experiment tracking (<strong>MLflow</strong>), and documentation (<strong>Sphinx</strong>).</li>
  </ul>
</details>

[//]: # ()
[//]: # (GitHub Projects & Contributions 💻)

[//]: # (======)

[//]: # (You can find my open-source projects &#40;limited due to the confidentiality&#41; and code repositories on my [GitHub profile 1]&#40;https://github.com/Lingkangjin&#41; and [GitHub profile 2]&#40;https://github.com/lingkang95&#41;.)

[//]: # ()
[//]: # (Some of my featured projects include:)

[//]: # (* [**Project 1**]&#40;https://github.com/Lingkangjin/AEC-Modelling&#41; - ALkaline Electrolyzer four-parameters semi-empirical Modelling.)

Languages 🌍
======
- Chinese: Native 
- Italian: Native
- English: Proficient 
- Dutch: A1

