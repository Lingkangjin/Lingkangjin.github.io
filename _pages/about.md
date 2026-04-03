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
<p align="justify">Lingkang is a Postdoctoral Researcher at the Department of Electrical Engineering, Eindhoven University of Technology, The Netherlands. He received the B.Sc. and M.Sc. degrees in Mechanical Engineering, as well as the Ph.D. degree in Energy Systems from Università Politecnica delle Marche, Italy, in 2017, 2019, and 2024, respectively. Since 2024, he has been a Postdoctoral Researcher in the Department of Electrical Engineering at Eindhoven University of Technology, The Netherlands. His research interests include energy storage integration and control, multi-energy systems, power-to-hydrogen conversion, power system operations, physics-informed modeling, machine learning, and optimization.</p>


Events and updates 
======

* **03 Jul 2026,** ORKEST Demo event for the Q2 2026 in Stedin Utrecht office for the ORKEST results dissemination  
* **26 Apr- 10 May 2026** Eurotech visiting in DTU wind, Denmark hosted by Dr. [Haris Ziras](https://orbit.dtu.dk/en/persons/haris-ziras/).
* **01 Apr 2026,** Joined Horizon Europe Erasmus Project-SG: SKILL as TU/e representative and involved in WP2 abd WP3.
* **15 Jun 2025,** Joined the [ORKEST](https://projecten.topsectorenergie.nl/projecten/orkest-optimal-integration-of-network-flexibiilty-and-asset-intelligence-to-increase-large-scale-integration-of-res-while-maintaining-reliability-37711) project as R4 leader
* **30 Mar 2024,** PhD defense with thesis: *Energy storage in multi-energy carrier communities: Li-ion batteries and hydrogen multi-physical details for integration into the planning stage*
* **15 Jan 2024,** started the postdoc researcher position working in NO-GIZMOS project as main TU/e responsible researcher
* **Mar-May 2023,** Visiting PhD at Eindoven university of Technology EES group under supervision of Dr.[Christina Papadimitriou](https://www.tue.nl/en/research/researchers/christina-papadimitriou)
* **Mar-Sep 2022,** Visiting Phd at Technical University of Denmark, DTU energy, CMT section under supervision of Prof. [Henrik Lund Frandsen](https://orbit.dtu.dk/en/persons/henrik-lund-frandsen/) and collaboration with Prof. [Rafael Nogueira Nakashima](https://orbit.dtu.dk/en/persons/rafael-nogueira-nakashima/)
* **Oct 2020,** Started PhD in industrial engineering with specialization in energy systems, at Universita' Politecnica delle Marche under supervision of Prof. Gabriele Comodi



Featured Papers
======

<style>
  /* Force the right column content to expand to full available width */
  .page {
    padding-right: 0 !important;
  }
  .page__inner-wrap {
    max-width: 100% !important;
  }

  /* Container for the papers */
  .paper-container {
    display: flex;
    flex-direction: row;
    gap: 15px;
    justify-content: space-between;
  }
  
  /* Individual paper styling */
  .paper-item {
    flex: 1;
    text-align: center;
    display: flex;
    flex-direction: column; /* Keeps the button neatly under the iframe */
  }
  
  /* Iframe styling */
  .paper-iframe {
    width: 100%;
    height: 350px;
    border: 1px solid #ccc;
    box-shadow: 2px 2px 5px rgba(0,0,0,0.1);
    background-color: white;
  }

  /* Full Screen Button styling */
  .fullscreen-btn {
    margin-top: 10px;
    padding: 8px 12px;
    background-color: #494e52; /* A nice, professional dark gray */
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 0.85em;
    font-weight: bold;
    transition: background-color 0.2s ease;
  }
  
  .fullscreen-btn:hover {
    background-color: #2a2d2f; /* Darkens slightly when hovered */
  }

  /* Magic happens here: if the screen is 768px or smaller (tablets/phones), stack them */
  @media (max-width: 768px) {
    .paper-container {
      flex-direction: column;
    }
  }
</style>

<div class="paper-container">
  <div class="paper-item">
    <iframe id="pdf1" class="paper-iframe" src="/files/ALK.pdf#page=1&amp;view=FitH" allowfullscreen webkitallowfullscreen mozallowfullscreen></iframe>
    <button class="fullscreen-btn" onclick="makeFullScreen('pdf1')">⛶ Full Screen Preview</button>
    <p style="font-size: 0.9em; margin-top: 10px; line-height: 1.2;"><b><a href="/files/paper1.pdf" target="_blank" style="text-decoration: none;">Alkaline electrolysis for green hydrogen production_ A novel, simple model for thermo-electrochemical coupled system analysis</a></b></p>
  </div>
  
  <div class="paper-item">
    <iframe id="pdf2" class="paper-iframe" src="/files/Batt.pdf#page=1&amp;view=FitH" allowfullscreen webkitallowfullscreen mozallowfullscreen></iframe>
    <button class="fullscreen-btn" onclick="makeFullScreen('pdf2')">⛶ Full Screen Preview</button>
    <p style="font-size: 0.9em; margin-top: 10px; line-height: 1.2;"><b><a href="/files/paper2.pdf" target="_blank" style="text-decoration: none;">Assessing battery degradation as a key performance indicator for multi-objective optimization of multi-carrier energy systems</a></b></p>
  </div>
  
  <div class="paper-item">
    <iframe id="pdf3" class="paper-iframe" src="/files/OFO.pdf#page=1&amp;view=FitH" allowfullscreen webkitallowfullscreen mozallowfullscreen></iframe>
    <button class="fullscreen-btn" onclick="makeFullScreen('pdf3')">⛶ Full Screen Preview</button>
    <p style="font-size: 0.9em; margin-top: 10px; line-height: 1.2;"><b><a href="/files/paper3.pdf" target="_blank" style="text-decoration: none;">Real-time Measurement-based Optimization for Distribution System Operation Considering Battery Voltage and Thermal Constraints</a></b></p>
  </div>
</div>

<script>
  function makeFullScreen(elemId) {
    var elem = document.getElementById(elemId);
    if (elem.requestFullscreen) {
      elem.requestFullscreen();
    } else if (elem.webkitRequestFullscreen) { /* Safari support */
      elem.webkitRequestFullscreen();
    } else if (elem.msRequestFullscreen) { /* IE11 support */
      elem.msRequestFullscreen();
    }
  }

  function exitFullScreen() {
    if (document.exitFullscreen) {
      document.exitFullscreen();
    } else if (document.webkitExitFullscreen) { /* Safari support */
      document.webkitExitFullscreen();
    } else if (document.msExitFullscreen) { /* IE11 support */
      document.msExitFullscreen();
    }
  }
</script>



Education
======
**[E3]** Ph.D in industrial engineering with specialization in Energy Systems,  [Università Politecnica delle Marche](https://www.univpm.it/Entra/), 2020-2024

**[E2]** M.S. in Mechanical engineering with thermo-mechanical specialization, [Università Politecnica delle Marche](https://www.univpm.it/Entra/), 2017-2019

**[E1]** B.S. in Mechanical engineering, [Università Politecnica delle Marche](https://www.univpm.it/Entra/) , 2014-2017

Work experience
======
**[W3]** Jan 2024-Now: Postdoctoral Researcher *at* Eindhoven University of Technology (NL) with supervisors: Dr. [Nikolaos Paterakis](https://www.tue.nl/en/research/researchers/nikolaos-paterakis), Dr. [Phuong Nguyen](https://www.tue.nl/en/research/researchers/phuong-nguyen) and Dr.[Christina Papadimitriou](https://www.tue.nl/en/research/researchers/christina-papadimitriou)

**[W2]** Nov 2020-Oct 2023: Ph.D Researcher *at*  Università Politecnica delle Marche (IT) with supervisor: Prof. Gabriele Comodi (g.comodi@staff.univpm.it)

**[W1]** Dec 2019-Oct 2020: Engineering consultant *at*  with supervisor: Piotr Rosiak


  
Skills
======
**[S6]ML and AI application** (energy context): Graph Neural Network, supervised and unsupervised machine learning 

**[S5]Optimization models application in energy systems** (planning and scheduling): Linear, Mixed-Integer Linear programming, Mixed- Integer Conic programming, Bilevel Optimization

**[S4] Multi-physics system level energy storage modeling and simulation:** Power-to-hydrogen systems, Lithium-ion batteries electrochemical modeling and degradation analysis, Alkaline electrolyser modeling

**[S3] Power systems analysis and operation:** Power flow and optimal power flow for transmission and distribution systems, Grid congestion management techniques (technical and market-based), Asset management and control of distributed energy resources

**[S2] Data analysis and programming:** Python (Pandas, Numpy, Matplotlib, Pytorch, SciPy, Geopandas, Pyomo, plotly, seaborn, etc.), Solvers (Gurobi, CPLEX, MOSEK, HiGHs, Ipopt), Text editing (Latex)

**[S1] Software development and CI/CD:** Git and GitHub, Jupyter Notebooks, Docker, Github actions, Mlflow, Streamlit, SPhinx
