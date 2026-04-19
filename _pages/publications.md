---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% if site.author.googlescholar %}
  <div class="wordwrap">You can find my full record of articles on <a href="{{site.author.googlescholar}}">my Google Scholar profile</a>.</div>
{% endif %}



## Collaboration Network 🌍


<style>
  /* Main wrapper for the interactive map section */
  .network-section {
    display: flex;
    flex-direction: column;
    gap: 20px;
    max-width: 1000px;
    margin: 2em auto;
    font-family: inherit;
  }

  @media (min-width: 768px) {
    .network-section {
      flex-direction: row;
      align-items: flex-start;
    }
  }

  /* Map Container */
  .map-container {
    position: relative;
    flex: 1.2;
    background-color: #f9f9f9;
    border-radius: 8px;
    border: 1px solid #eee;
    overflow: hidden;
  }

  /* The Map Image */
  .map-image {
    width: 100%;
    height: auto;
    display: block;
  }

  /* Interactive Pins */
  .map-pin {
    position: absolute;
    width: 28px;
    height: 28px;
    background-color: transparent;
    cursor: pointer;
    transform: translate(-50%, -100%); 
    transition: transform 0.2s ease;
  }

  .map-pin:hover {
    transform: translate(-50%, -110%) scale(1.2);
  }

  /* SVG Pin icon */
  .pin-svg {
    width: 100%;
    height: 100%;
    filter: drop-shadow(0px 4px 4px rgba(0,0,0,0.3));
  }

  /* Pin positioning */
  .pin-denmark     { top: 48%; left: 44%; }
  .pin-netherlands { top: 56%; left: 39%; }
  .pin-italy       { top: 78%; left: 46%; }

  /* Colors matching your image */
  .color-denmark     { fill: #b8e010; }
  .color-netherlands { fill: #c71b22; }
  .color-italy       { fill: #0081c6; }

  /* Information Panel (Right side) */
  .info-panel {
    flex: 0.8;
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    border: 1px solid #ddd;
    box-shadow: 0 4px 10px rgba(0,0,0,0.05);
    min-height: 350px;
    display: flex;
    flex-direction: column;
  }

  .panel-title {
    margin-top: 0;
    margin-bottom: 15px;
    font-size: 1.2rem;
    color: #333;
    border-bottom: 3px solid #eee;
    padding-bottom: 10px;
  }

  /* Grid for Logos */
  .logo-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(90px, 1fr));
    gap: 15px;
    margin-bottom: 20px;
  }

  .partner-logo {
    width: 100%;
    height: 60px;
    object-fit: contain;
    cursor: pointer;
    border: 1px solid transparent;
    padding: 5px;
    border-radius: 4px;
    transition: all 0.2s ease;
    filter: grayscale(100%);
  }

  .partner-logo:hover, .partner-logo.active {
    filter: grayscale(0%);
    border-color: #ddd;
    background-color: #f4f4f4;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
  }

  /* Project Details Box */
  .project-details {
    display: none; 
    background-color: #fcfcfc;
    border-left: 4px solid #333;
    padding: 15px;
    margin-top: auto;
    animation: fadeIn 0.3s ease;
  }

  .project-details h4 {
    margin: 0 0 10px 0;
    color: #111;
    font-size: 1rem;
    font-weight: bold;
  }

  .project-details p {
    margin: 0;
    font-size: 0.9rem;
    color: #444;
    line-height: 1.4;
  }

  .initial-message {
    color: #888;
    text-align: center;
    margin-top: 50px;
    font-style: italic;
  }

  @keyframes fadeIn {
    from { opacity: 0; transform: translateY(5px); }
    to { opacity: 1; transform: translateY(0); }
  }
</style>

<div class="network-section">
  
  <div class="map-container">
    <img src="/images/europe-map-blank.png" alt="Map of Europe" class="map-image">
    
    <div class="map-pin pin-denmark" onclick="showCountry('denmark')" title="Denmark">
      <svg class="pin-svg" viewBox="0 0 24 24"><path class="color-denmark" d="M12 0C7.58 0 4 3.58 4 8c0 5.25 8 16 8 16s8-10.75 8-16c0-4.42-3.58-8-8-8zm0 11c-1.66 0-3-1.34-3-3s1.34-3 3-3 3 1.34 3 3-1.34 3-3 3z"/></svg>
    </div>

    <div class="map-pin pin-netherlands" onclick="showCountry('netherlands')" title="Netherlands">
      <svg class="pin-svg" viewBox="0 0 24 24"><path class="color-netherlands" d="M12 0C7.58 0 4 3.58 4 8c0 5.25 8 16 8 16s8-10.75 8-16c0-4.42-3.58-8-8-8zm0 11c-1.66 0-3-1.34-3-3s1.34-3 3-3 3 1.34 3 3-1.34 3-3 3z"/></svg>
    </div>

    <div class="map-pin pin-italy" onclick="showCountry('italy')" title="Italy">
      <svg class="pin-svg" viewBox="0 0 24 24"><path class="color-italy" d="M12 0C7.58 0 4 3.58 4 8c0 5.25 8 16 8 16s8-10.75 8-16c0-4.42-3.58-8-8-8zm0 11c-1.66 0-3-1.34-3-3s1.34-3 3-3 3 1.34 3 3-1.34 3-3 3z"/></svg>
    </div>
  </div>

  <div class="info-panel">
    <h3 class="panel-title" id="panelTitle">Institutional Partners</h3>
    
    <div id="initialMessage" class="initial-message">
      Select a country pin on the map to explore research partners and projects.
    </div>

    <div class="logo-grid" id="logoGrid"></div>

    <div class="project-details" id="projectDetails">
      <h4 id="institutionName">Institution Name</h4>
      <p id="projectText">Project description goes here.</p>
    </div>
  </div>

</div>

<script>
  const networkData = {
    denmark: {
      name: "Denmark Collaborations",
      color: "#b8e010",
      partners: [
        {
          id: "dtu",
          logo: "/images/icons/dtu.png",
          name: "Technical University of Denmark (DTU)",
          project: "Visiting PhD research stay. Collaboration focused on thermal and electrochemical analysis based on Alkaline electrolyzers."
        }
      ]
    },
    netherlands: {
      name: "Netherlands Collaborations",
      color: "#c71b22",
      partners: [
        {
          id: "tue",
          logo: "/images/icons/tue.png",
          name: "Eindhoven University of Technology (TU/e)",
          project: "Current Postdoctoral institution. Main responsible researcher for the NO GIZMOS, ORKEST project and representative for Horizon Europe Erasmus Project SG: SKILL."
        },
        {
          id: "enexis",
          logo: "/images/icons/enexis.png",
          name: "Enexis Holding N.V.",
          project: "DSO partner involved in NO-GIZMOS for the transformer level data provision"
        },
        {
          id: "stedin",
          logo: "/images/icons/stedin.png",
          name: "Stedin",
          project: "Partner and leader in the ORKEST project. "
        },
        {
          id: "cgi",
          logo: "/images/icons/cgi.png",
          name: "CGI",
          project: "Partner in NO-GIZMOS for the data management platform"
        },
        {
          id: "iwell",
          logo: "/images/icons/iwell.png",
          name: "iwell",
          project: "Partner in NO-GIZMOS for the battery level data provision and hardware"
        }
      ]
    },
    italy: {
      name: "Italy Collaborations",
      color: "#0081c6",
      partners: [
        {
          id: "univpm",
          logo: "/images/icons/univpm.png",
          name: "Università Politecnica delle Marche",
          project: "Institution for B.Sc., M.Sc., and Ph.D. degrees."
        },
        {
          id: "snam",
          logo: "/images/icons/snam.png",
          name: "Snam",
          project: "Industrial collaboration regarding blending of hydrogen with natural gas for the decarbonization"
        },
        {
          id: "unibz",
          logo: "/images/icons/unibz.png",
          name: "Free University of Bozen-Bolzano",
          project: "Joint academic research in optimization models application for the off-grid application using hydro-electric plant."
        },
        {
          id: "enea",
          logo: "/images/icons/enea.png",
          name: "ENEA",
          project: "National project collaboration focusing on local energy community."
        }
      ]
    }
  };

  function showCountry(countryKey) {
    const data = networkData[countryKey];
    
    const titleEl = document.getElementById('panelTitle');
    titleEl.textContent = data.name;
    titleEl.style.borderBottomColor = data.color;

    document.getElementById('initialMessage').style.display = 'none';
    document.getElementById('projectDetails').style.display = 'none';

    const gridEl = document.getElementById('logoGrid');
    gridEl.innerHTML = ''; 
    
    data.partners.forEach(partner => {
      const img = document.createElement('img');
      img.src = partner.logo;
      img.alt = partner.name;
      img.className = 'partner-logo';
      img.onclick = () => showPartnerDetails(partner, img, data.color);
      gridEl.appendChild(img);
    });
  }

  function showPartnerDetails(partner, clickedImgEl, accentColor) {
    document.querySelectorAll('.partner-logo').forEach(el => el.classList.remove('active'));
    clickedImgEl.classList.add('active');

    const detailsBox = document.getElementById('projectDetails');
    document.getElementById('institutionName').textContent = partner.name;
    document.getElementById('projectText').textContent = partner.project;
    
    detailsBox.style.borderLeftColor = accentColor;
    detailsBox.style.display = 'block';
  }
</script>

## Journal Articles
**[J13]** **Lingkang Jin**, Laurens Bliek, Nikolaos G. Paterakis. "Surrogate Models in Power System Scheduling Problems: Learning Active Constraints via Graph Neural Networks," *IEEE Transactions on Smart Grid*, 2026. [[DOI]](https://doi.org/10.1109/TSG.2026.3681028)

**[J12]** **Lingkang Jin**, Laurens Bliek, Nikolaos G. Paterakis. "Learning Active Constraints for Bilevel Optimization: Evaluating Classification Metrics on Real-World Distribution System Data," *IEEE Transactions on Smart Grid*, vol. 17, no. 2, pp. 1303-1314, 2026. [[DOI]](https://doi.org/10.1109/TSG.2025.3632419)

**[J11]** **Lingkang Jin**, Mosè Rossi, Andrea Monforti Ferrario, Francesca Mennilli, Gabriele Comodi. "Designing hybrid energy storage systems for steady green hydrogen production in residential areas: A GIS-based framework," *Applied Energy*, vol. 389, pp. 125765, 2025. [[URL]](https://www.sciencedirect.com/science/article/pii/S0306261925004957)

**[J10]** **Lingkang Jin**, Rafael Nogueira Nakashima, Gabriele Comodi, Henrik Lund Frandsen. "Alkaline electrolysis for green hydrogen production: A novel, simple model for thermo-electrochemical coupled system analysis," *Applied Thermal Engineering*, vol. 262, pp. 125154, 2025. [[URL]](https://www.sciencedirect.com/science/article/pii/S1359431124028229)

**[J9]** Francesca Mennilli, **Lingkang Jin**, Mosè Rossi, Gabriele Comodi. "Assessment of a NaOH-based alkaline electrolyser’s performance: System modelling and operating parameters optimisation," *International Journal of Hydrogen Energy*, vol. 85, pp. 625-634, 2024. [[URL]](https://www.sciencedirect.com/science/article/pii/S0360319924033342)

**[J8]** Mosè Rossi, **Lingkang Jin**, Andrea Monforti Ferrario, Marialaura Di Somma, Amedeo Buonanno, Christina Papadimitriou, Andrei Morch, Giorgio Graditi, Gabriele Comodi. "Energy Hub and Micro-Energy Hub Architecture in Integrated Local Energy Communities: Enabling Technologies and Energy Planning Tools," *Energies*, vol. 17, no. 19, 2024. [[URL]](https://www.mdpi.com/1996-1073/17/19/4813)

**[J7]** **Lingkang Jin**, Milad Kazemi, Gabriele Comodi, Christina Papadimitriou. "Assessing battery degradation as a key performance indicator for multi-objective optimization of multi-carrier energy systems," *Applied Energy*, vol. 361, pp. 122925, 2024. [[URL]](https://www.sciencedirect.com/science/article/pii/S0306261924003088)

**[J6]** Andrea Pizzuti, **Lingkang Jin**, Mosè Rossi, Fabrizio Marinelli, Gabriele Comodi. "A novel approach for multi-stage investment decisions and dynamic variations in medium-term energy planning for multi-energy carriers community," *Applied Energy*, vol. 353, pp. 122177, 2024. [[URL]](https://www.sciencedirect.com/science/article/pii/S0306261923015416)

**[J5]** Enrico Marchegiani, Francesco Ferracuti, Andrea Monteriù, **Lingkang Jin**, Mosè Rossi, Gabriele Comodi, Lucio Ciabattoni. "Li-ion battery aging model robustness: An analysis using univariate and multivariate techniques," *Journal of Energy Storage*, vol. 72, pp. 108591, 2023. [[URL]](https://www.sciencedirect.com/science/article/pii/S2352152X23019886)

**[J4]** **Lingkang Jin**, Mosè Rossi, Andrea Monforti Ferrario, Jacopo Carlo Alberizzi, Massimiliano Renzi, Gabriele Comodi. "Integration of battery and hydrogen energy storage systems with small-scale hydropower plants in off-grid local energy communities," *Energy Conversion and Management*, vol. 286, pp. 117019, 2023. [[URL]](https://www.sciencedirect.com/science/article/pii/S0196890423003655)

**[J3]** **Lingkang Jin**, Mosè Rossi, Lucio Ciabattoni, Marialaura Di Somma, Giorgio Graditi, Gabriele Comodi. "Environmental constrained medium-term energy planning: The case study of an Italian university campus as a multi-carrier local energy community," *Energy Conversion and Management*, vol. 278, pp. 116701, 2023. [[URL]](https://www.sciencedirect.com/science/article/pii/S019689042300047X)

**[J2]** Anam Nadeem, Mosè Rossi, Erica Corradi, **Lingkang Jin**, Gabriele Comodi, Nadeem Ahmed Sheikh. "Energy-Environmental Planning of Electric Vehicles (EVs): A Case Study of the National Energy System of Pakistan," *Energies*, vol. 15, no. 9, 2022. [[URL]](https://www.mdpi.com/1996-1073/15/9/3054)

**[J1]** **Lingkang Jin**, Andrea Monforti Ferrario, Viviana Cigolotti, Gabriele Comodi. "Evaluation of the impact of green hydrogen blending scenarios in the Italian gas network: Optimal design and dynamic simulation of operation strategies," *Renewable and Sustainable Energy Transition*, vol. 2, pp. 100022, 2022. [[URL]](https://www.sciencedirect.com/science/article/pii/S2667095X2200006X)
## Conference Proceedings
**[C13]** **Lingkang Jin**, Sen Zhan, Haoyang Zhang, Nikolaos G. Paterakis. "Multi-Objective Congestion Management in Low-Voltage Grids: Coordinating End-Users and System Operators for Real-World Implementation," *2025 IEEE PES Innovative Smart Grid Technologies Conference Europe (ISGT Europe)*, 2025. [[DOI]](https://doi.org/10.1109/ISGTEurope64741.2025.11305401)

**[C12]** **Lingkang Jin**, Sen Zhan, Samuel Cudjoe, Nikolaos G. Paterakis. "Empowering Low-Voltage Grids: Real-World Implementation of Home Batteries for Effective Congestion Management," *2025 IEEE Kiel PowerTech*, 2025. [[DOI]](https://doi.org/10.1109/PowerTech59965.2025.11180463)

**[C11]** Xin Li, Jeroen J. Markus, Stefan De Lange, **Lingkang Jin**, Koen Kok, Nikolaos G. Paterakis. "Hybrid Heat Pump Flexibility Allocation: Quantified Thermal Comfort-Based Congestion Management," *2025 IEEE International Conference on Environment and Electrical Engineering and 2025 IEEE Industrial and Commercial Power Systems Europe (EEEIC / I&CPS Europe)*, 2025. [[DOI]](https://doi.org/10.1109/EEEIC/ICPSEurope64998.2025.11169153)

**[C10]** Haoyang Zhang, **Lingkang Jin**, Koen Kok, Nikolaos G. Paterakis. "Surrogate Model-Based Reinforcement Learning for Bidding Strategies in Local Flexibility Markets," *2025 IEEE International Conference on Environment and Electrical Engineering and 2025 IEEE Industrial and Commercial Power Systems Europe (EEEIC / I&CPS Europe)*, 2025. [[DOI]](https://doi.org/10.1109/EEEIC/ICPSEurope64998.2025.11169071)

**[C9]** **Lingkang Jin**, Xin Li, Stefan De Lange, Han Slootweg, Nikolaos G. Paterakis. "Response Allocation of Domestic Hybrid Heat Pumps Flexibility for Congestion Management," *2024 IEEE PES Innovative Smart Grid Technologies Europe (ISGT EUROPE)*, 2024. [[DOI]](https://doi.org/10.1109/ISGTEUROPE62998.2024.10863630)

**[C8]** Marialaura Di Somma, **Lingkang Jin**, Nicola Bianco, Christina Papadimitriou. "Advancing Multi-Energy Hub Design: an Integrated Approach for Optimizing Residential Clusters in High RES Penetration Scenarios," *2024 International Conference on Smart Energy Systems and Technologies (SEST)*, 2024. [[DOI]](https://doi.org/10.1109/SEST61601.2024.10694519)

**[C7]** Francesca Mennilli, **Lingkang Jin**, Mosè Rossi, Gabriele Comodi. "A Fitting Process for the Optimal Modelling of an Anion Exchange Membrane (AEM) Electrolyser," *Proceedings of the ASME Turbo Expo 2024: Power for Land, Sea, and Air*, 2024.

**[C6]** **Lingkang Jin**, Mosè Rossi, Flavio Caresana, Leonardo Pelagalli, Gabriele Comodi. "Metal hydrides in hydrogen storage: optimization of dynamic control strategies," *Journal of Physics: Conference Series*, 2023. [[URL]](https://dx.doi.org/10.1088/1742-6596/2648/1/012056)

**[C5]** Francesca Mennilli, **Lingkang Jin**, Mosè Rossi, Alice Mugnini, Gabriele Comodi. "Energy analysis of a hydrogen integrated system in the residential sector," *Journal of Physics: Conference Series*, 2023. [[URL]](https://dx.doi.org/10.1088/1742-6596/2648/1/012057)

**[C4]** Jacopo Carlo Alberizzi, Miguel Angel Pérez Estevez, Massimiliano Renzi, **Lingkang Jin**, Mosè Rossi, Alessandro Alberizzi. "Optimal Management of a Hydro – Wind Energy System with Hydrogen Storage," *2023 12th International Conference on Power Science and Engineering (ICPSE)*, 2023. [[DOI]](https://doi.org/10.1109/ICPSE59506.2023.10329307)

**[C3]** Marialaura Di Somma, Amedeo Buonanno, Martina Caliano, **Lingkang Jin**, Mosè Rossi, Giorgio Graditi, Gabriele Comodi. "Stochastic energy management for the Italian UNIVPM campus as a multi-carrier energy hub participating in the day-ahead market," *IEEE EUROCON 2023 - 20th International Conference on Smart Technologies*, 2023. [[DOI]](https://doi.org/10.1109/EUROCON56442.2023.10199000)

**[C2]** Andreas Bechmann, Thanasis Barlas, Henrik Lund Frandsen, **Lingkang Jin**, Rafael Nogueira Nakashima. "The Hydrogen Wind Turbine: Design of a wind turbine optimised for hydrogen production," *Journal of Physics: Conference Series*, 2023. [[URL]](https://dx.doi.org/10.1088/1742-6596/2507/1/012010)

**[C1]** **Lingkang Jin**, Rafael Nogueira Nakashima, Henrik Lund Frandsen, Gabriele Comodi. "Alkaline Electrolysis for Green Hydrogen Production: Techno-Economic Analysis of Temperature Influence and Control," *Proceedings of the 36th International Conference on Efficiency, Cost, Optimization, Simulation and Environmental Impact of Energy Systems (ECOS)*, 2023. [[URL]](https://doi.org/10.52202/069564-0082)