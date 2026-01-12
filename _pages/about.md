---
permalink: /
title: "Lingkang Jin, Ph.D."
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---
<strong>Energy Systems Researcher \| Optimization modeler \| Data Scientist</strong>

Bio
======
Lingkang is a Postdoctoral Researcher at the Department of Electrical Engineering, Eindhoven University of Technology, The Netherlands. He received the B.Sc. and M.Sc. degrees in Mechanical Engineering, as well as the Ph.D. degree in Energy Systems from Università Politecnica delle Marche, Italy, in 2017, 2019, and 2024, respectively. Since 2024, he has been a Postdoctoral Researcher in the Department of Electrical Engineering at Eindhoven University of Technology, The Netherlands. His research interests include energy storage integration and control, multi-energy systems, power-to-hydrogen conversion, power system operations, physics-informed modeling, machine learning, and optimization.



Education
======
* Ph.D in Energy Systems,  [Università Politecnica delle Marche](https://www.univpm.it/Entra/), 2024
* M.S. in Mechanical engineering with thermo-mechanical specialization, [Università Politecnica delle Marche](https://www.univpm.it/Entra/), 2019
* B.S. in Mechanical engineering, [Università Politecnica delle Marche](https://www.univpm.it/Entra/) , 2017

Work experience
======
* Jan 2024-Now: Postdoctoral Researcher
  * Technical University of Eindhoven
  * Duties includes: Scientific research on grid congestion management, supervision of Msc students, writing research proposals and project management.
  * Supervisor: Nikolaos Paterakis (n.paterakis@tue.nl) and Phuong Nguyen (p.nguyen.hong@tue.nl)

* Nov 2020-Oct 2023: Ph.D Researcher
  * Università Politecnica delle Marche
  * Duties included: Free research Ph.D. candidate on energy system modelling, optimization and control. thesis work on impact of the different types of energy storage systems on power system operation and planning.
  * Supervisor: Gabriele Comodi (g.comodi@staff.univpm.it)

* Dec 2019-Oct 2020: Engineering consultant
  * Capgemini Engineering
  * Duties included: Consultant for Whirlpool EMEA as lab engineering, supporting the testing activities for new appliances development and certification.
  * Supervisor: Piotr Rosiak


```mermaid
flowchart LR
  %% Left-to-right timeline
  %% Each milestone has its own color; subblocks inherit the same class

  %% Milestone 1
  subgraph M1["2013-2017"]
    direction TB
    M1_main["Bsc in Mechanical Engineering"]    
    class M1_main,M1_a,M1_b,M1_c milestone1;
  end

  %% Milestone 2
  subgraph M2["2017-2019"]
    direction TB
    M2_main["Msc in Mechanical Engineering"]
    class M2_main,M2_a,M2_b milestone2;
  end

  %% Milestone 3
  subgraph M3["2020-2023"]
    direction TB
    M3_main["PhD in Energy Systems"]
    class M3_main,M3_a milestone3;
  end
  
  subgraph M4["2024-now"]
    direction TB
    M4_main["Postdoctoral Researcher"]
    class M4_main,M4_a milestone3;
  end

  %% Timeline connections
  M1_main ==> M2_main ==> M3_main ==> M4_main

  %% Styles per milestone
  classDef milestone1 fill:#ffd166,stroke:#e07a00,color:#1a1a1a,stroke-width:2px;
  classDef milestone2 fill:#06d6a0,stroke:#048b74,color:#0a0a0a,stroke-width:2px;
  classDef milestone3 fill:#118ab2,stroke:#0b5f7e,color:#ffffff,stroke-width:2px;
```
  
Skills
======
* Optimization models and algorithms application in energy systems (planning and scheduling)
  * Linear programming
  * Mixed-integer linear programming
  * Mixed- Integer Conic programming
  * Bilevel Optimization
* Multi-physics system level energy storage modeling and simulation 
  * Power-to-hydrogen systems
  * Lithium-ion batteries electrochemical modeling and degradation analysis
  * Alkaline electrolyser modeling
* Power systems analysis and operation
  * Power flow and optimal power flow for transmission and distribution systems
  * Grid congestion management techniques (technical and market-based)
  * Asset management and control of distributed energy resources
* Data analysis and programming
  * Python (Pandas, Numpy, Matplotlib, SciPy, Geopandas, Pyomo, plotly, seaborn, etc.)
  * Gurobi, CPLEX, MOSEK
  * LaTeX
* Software development and versioning control
  * Git and GitHub
  * Jupyter Notebooks
  * Docker
  * Markdown and HTML

Publications
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Talks
======
  <ul>{% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html  %}
  {% endfor %}</ul>
  
Teaching
======
  <ul>{% for post in site.teaching reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Service and leadership
======
* Currently involved in ORKEST project as R4 leader 
* Support in daily revision of Ph.D. students 

