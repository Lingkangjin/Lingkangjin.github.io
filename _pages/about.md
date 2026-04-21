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
Lingkang is a Postdoctoral Researcher in the Department of Electrical Engineering at Eindhoven University of Technology (TU/e), The Netherlands. 
He earned his B.Sc. and M.Sc. degrees in Mechanical Engineering, followed by a Ph.D. in Energy Systems, from Università Politecnica delle Marche, Italy, in 2017, 2019, and 2024, respectively.

His research focuses on developing **multi-physics asset integration and energy systems modeling through mathematical programming with support of  AI and Machine Learning tools to reduce computational burdens and enhance scenario generation**.

Since 2020, Lingkang has achieved 13 journal publications (8 as first author) in high-impact venues such as Applied Energy, IEEE Transactions on Smart Grid, and the Journal of Energy Storage. He has also authored over 13 conference papers and serves as a regular reviewer for leading IEEE and Elsevier journals.



Research Framework 🧩
======

<style>
  /* Main Container */
  .arch-container {
    max-width: 1000px;
    margin: 2em auto;
    font-family: inherit;
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 15px;
  }

  /* Top Section (Horizontal Flow) */
  .arch-top-row {
    display: flex;
    flex-direction: row;
    align-items: stretch;
    justify-content: center;
    gap: 10px;
    width: 100%;
  }

  /* Branches for Left and Right side logic */
  .arch-branch {
    display: flex;
    flex-direction: row;
    align-items: stretch;
    gap: 10px;
  }

  /* Base Box Style */
  .arch-box {
    border: 1px solid #333;
    padding: 15px;
    border-radius: 4px;
    text-align: center;
    display: flex;
    flex-direction: column;
    box-shadow: 2px 2px 5px rgba(0,0,0,0.05);
  }

  .arch-box h4 {
    margin-top: 0;
    margin-bottom: 15px;
    font-size: 0.95rem;
    font-weight: bold;
    color: #111;
  }

  /* Specific Box Colors matching your diagram */
  .box-components { background-color: #f3dfdf; }
  .box-physics    { background-color: #f3dfdf; }
  .box-center     { background-color: #fbeaba; width: 200px; justify-content: center;}
  .box-ai-support { background-color: #e4eff5; }
  .box-ml-tools   { background-color: #e4eff5; }
  
  .box-final {
    background-color: #fcd55c;
    border: 2px solid #333;
    padding: 15px 30px;
    border-radius: 4px;
    font-size: 1.1rem;
    font-weight: bold;
    text-align: center;
    box-shadow: 2px 2px 5px rgba(0,0,0,0.1);
    width: 80%;
  }

  /* Arrows styling */
  .arch-arrow-container {
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 2rem;
    color: #555;
    font-weight: bold;
  }
  
  .down-arrow {
    font-size: 3rem;
    color: #555;
    margin: -10px 0;
  }

  /* Inner Grid Layouts */
  .comp-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 15px;
  }

  .vert-grid {
    display: flex;
    flex-direction: column;
    gap: 15px;
    align-items: center;
    justify-content: center;
    /* Removed height: 100% to allow the "etc" to push to the bottom */
  }

  /* Items Formatting - Interactive */
  .arch-item {
    display: flex;
    flex-direction: column;
    align-items: center;
    font-size: 0.85em; 
    font-weight: bold; 
    line-height: 1.2;
    color: #222;
    cursor: pointer; 
    transition: transform 0.2s ease-in-out; 
  }

  .arch-item:hover {
    transform: scale(1.08); 
  }

  .arch-item img {
    width: 45px;
    height: 45px;
    object-fit: contain;
    margin-bottom: 5px;
    transition: filter 0.2s ease-in-out; 
  }

  .arch-item:hover img {
    filter: drop-shadow(0px 6px 8px rgba(0,0,0,0.35)); 
  }

  .arch-item.large-img img {
    width: 80px;
    height: 80px;
  }

  /* "Etc." Styling */
  .arch-etc {
    margin-top: auto; /* Pushes the text to the bottom of the box */
    padding-top: 15px;
    text-align: right; /* Aligns to the bottom right */
    font-size: 0.9em;
    color: #222;
  }

  /* Mobile Responsiveness */
  @media (max-width: 950px) {
    .arch-top-row {
      flex-direction: column;
      align-items: center;
    }
    .arch-branch {
      flex-direction: column;
      align-items: center;
      width: 100%;
    }
    .arch-right-branch {
      flex-direction: column-reverse; 
    }
    .arch-arrow-container {
      transform: rotate(90deg); 
      padding: 10px 0;
    }
    .box-center {
      width: 100%;
      max-width: 350px;
    }
    .box-final {
      width: 100%;
    }
  }
</style>

<div class="arch-container">
  
  <div class="arch-top-row">
    
    <div class="arch-branch arch-left-branch">
      <div class="arch-box box-components">
        <h4>Components</h4>
        <div class="comp-grid">
          <div class="arch-item">
            <img src="/images/icons/electrolyzer.png" alt="Electrolyzer">
            <span>Electrolyzer<br>(Power to H2)</span>
          </div>
          <div class="arch-item">
            <img src="/images/icons/battery.svg" alt="Battery">
            <span>Li-ion Battery</span>
          </div>
          <div class="arch-item">
            <img src="/images/icons/transformer.png" alt="Transformer">
            <span>Power transformer</span>
          </div>
          <div class="arch-item">
            <img src="/images/icons/cables.png" alt="Cables">
            <span>Cables</span>
          </div>
        </div>
        <div class="arch-etc"><strong>... etc.</strong></div>
      </div>

      <div class="arch-arrow-container">➔</div>

      <div class="arch-box box-physics">
        <h4>Physic-based layer</h4>
        <div class="vert-grid">
          <div class="arch-item">
            <img src="/images/icons/electrical.png" alt="Electrical">
            <span>Electrical</span>
          </div>
          <div class="arch-item">
            <img src="/images/icons/chemical.png" alt="Chemical">
            <span>Chemical</span>
          </div>
          <div class="arch-item">
            <img src="/images/icons/thermal.png" alt="Thermal">
            <span>Thermal</span>
          </div>
        </div>
        <div class="arch-etc"><strong>... etc.</strong></div>
      </div>
    </div>

    <div class="arch-arrow-container">➔</div>

    <div class="arch-box box-center">
      <h4>System decisions/policy</h4>
      <div class="vert-grid">
        <div class="arch-item large-img">
          <img src="/images/icons/scheduling.png" alt="Hub Scheduling">
          <span>Multi Energy Hub<br>scheduling</span>
        </div>
      </div>
      <div class="arch-etc"><strong>... etc.</strong></div>
    </div>

    <div class="arch-arrow-container">⬅</div>

    <div class="arch-branch arch-right-branch">
      <div class="arch-box box-ai-support">
        <h4>AI-support layer</h4>
        <div class="vert-grid">
          <div class="arch-item">
            <img src="/images/icons/speedup.png" alt="Speed up">
            <span>Computational<br>speed up</span>
          </div>
          <div class="arch-item">
            <img src="/images/icons/forecast.png" alt="Forecast">
            <span>Forecast and<br>scenarios generation</span>
          </div>
        </div>
        <div class="arch-etc"><strong>... etc.</strong></div>
      </div>

      <div class="arch-arrow-container">⬅</div>

      <div class="arch-box box-ml-tools">
        <h4>ML/AI tools</h4>
        <div class="vert-grid">
          <div class="arch-item large-img">
            <img src="/images/icons/neura-net.png" alt="Neural Network">
            <span>Neural Network applied to<br>optimization models</span>
          </div>
          <div class="arch-item large-img">
            <img src="/images/icons/GNN.png" alt="GNN">
            <span>Multi-layers Graph<br>Neural Network</span>
          </div>
        </div>
        <div class="arch-etc"><strong>... etc.</strong></div>
      </div>
    </div>

  </div> 
  <div class="down-arrow">⇩</div>

  <div class="box-final">
    Multi-physic AI supported System Level Energy System Modeling
  </div>

</div>


News and updates 📈 
======

* <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Symbols/New%20Button.png" alt="New Button" width="35" height="35" style="vertical-align: middle; margin-right: 5px;" />
**03 Jul 2026,** ORKEST Demo event for the Q2 2026 in Stedin Utrecht office for the ORKEST results dissemination  
* <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Symbols/New%20Button.png" alt="New Button" width="35" height="35" style="vertical-align: middle; margin-right: 5px;" />
**26 Apr- 10 May 2026** Eurotech visiting in [DTU Wind and Energy Systems](https://wind.dtu.dk/), Denmark hosted by Dr. [Haris Ziras](https://orbit.dtu.dk/en/persons/haris-ziras/).
* <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Symbols/New%20Button.png" alt="New Button" width="35" height="35" style="vertical-align: middle; margin-right: 5px;" />
**01 Apr 2026,** Joined Horizon Europe Erasmus Project-SG: SKILL as TU/e representative and involved in WP2 abd WP3.
* **15 Jun 2025,** Joined the [ORKEST](https://projecten.topsectorenergie.nl/projecten/orkest-optimal-integration-of-network-flexibiilty-and-asset-intelligence-to-increase-large-scale-integration-of-res-while-maintaining-reliability-37711) project as R4 leader
* **30 Mar 2024,** PhD defense with thesis: [*Energy storage in multi-energy carrier communities: Li-ion batteries and hydrogen multi-physical details for integration into the planning stage*](https://tesidottorato.depositolegale.it/handle/20.500.14242/307237)
* **15 Jan 2024,** started the postdoc researcher position working in NO-GIZMOS project as main TU/e responsible researcher
* **Mar-May 2023,** Visiting PhD at Eindoven university of Technology EES group under supervision of Dr.[Christina Papadimitriou](https://www.tue.nl/en/research/researchers/christina-papadimitriou)
* **Mar-Sep 2022,** Visiting Phd at Technical University of Denmark, DTU energy, CMT section under supervision of Prof. [Henrik Lund Frandsen](https://orbit.dtu.dk/en/persons/henrik-lund-frandsen/) and collaboration with Prof. [Rafael Nogueira Nakashima](https://orbit.dtu.dk/en/persons/rafael-nogueira-nakashima/)
* **Oct 2020,** Started PhD in industrial engineering with specialization in energy systems, at Universita' Politecnica delle Marche under supervision of Prof. [Gabriele Comodi](https://www.univpm.it/Entra/Engine/RAServePG.php/P/320710010421/idsel/590/docname/GABRIELE%20COMODI)



Featured  Open Access Papers 
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
**[S6] ML and AI application** (energy context): Graph Neural Network, supervised and unsupervised machine learning 

**[S5] Optimization models application in energy systems** (planning and scheduling): Linear, Mixed-Integer Linear programming, Mixed- Integer Conic programming, Bilevel Optimization

**[S4] Multi-physics system level energy storage modeling and simulation:** Power-to-hydrogen systems, Lithium-ion batteries electrochemical modeling and degradation analysis, Alkaline electrolyser modeling

**[S3] Power systems analysis and operation:** Power flow and optimal power flow for transmission and distribution systems, Grid congestion management techniques (technical and market-based), Asset management and control of distributed energy resources

**[S2] Data analysis and programming:** Python (Pandas, Numpy, Matplotlib, Pytorch, SciPy, Geopandas, Pyomo, plotly, seaborn, etc.), Solvers (Gurobi, CPLEX, MOSEK, HiGHs, Ipopt), Text editing (Latex)

**[S1] Software development and CI/CD:** Git and GitHub, Jupyter Notebooks, Docker, Github actions, Mlflow, Streamlit, SPhinx

GitHub Projects & Contributions 💻
======
You can find my open-source projects (limited due to the confidentiality) and code repositories on my [GitHub profile 1](https://github.com/Lingkangjin) and [GitHub profile 2](https://github.com/lingkang95).

Some of my featured projects include:
* [**Project 1**](https://github.com/Lingkangjin/AEC-Modelling) - ALkaline Electrolyzer four-parameters semi-empirical Modelling.

