---
layout: archive
#title: "Projects"
permalink: /portfolio/
author_profile: true
projects:
  - title: "SG: SKILL - European Erasmus+ Blueprint project (2026-now)"
    excerpt: "SG-SKILL (Skill-based education for smart-grids job profiles) is a European Erasmus+ Blueprint project aimed at strengthening Europe’s workforce for the digital, green and resilient transformation of electricity grids"
    link: "https://sgskill.eddie-skills.eu/"
    partners: "Comillas, Politecnico di Milano, RWTH Aachen university, University of Cyprus., Technical University of Eindhoven, National Technical University of Athens, CIEMAT, ZABALA innovation, NOVEL group, Padre Piquer Foundation, iCert, E.DSO, T&D Europe, GAIA, Iberdrola Group"
    role: "Task 2.3 leader and involvement in WP2 and WP3."   
    image: "/images/SG_SKIL.png"
  - title: "ORKEST - MOOI project (2025-now)"
    excerpt: "  Grid and user assets coordination and orchestration to solve the congestion issues for the increasing renewable energy transition while maintaining the components reliability."
    link: "https://projecten.topsectorenergie.nl/projecten/orkest-optimal-integration-of-network-flexibiilty-and-asset-intelligence-to-increase-large-scale-integration-of-res-while-maintaining-reliability-37711"
    partners: "Stedin, DNV Netherldans B.V., Netbeheer Nederland, Phase to Phase B.v., Technolution B.v. , Eindhoven Technical University"
    role: "Result leader 4, with the focus on development and integration of the optimization module."   
    image: "/images/orkest.jpg"

  - title: "NO-GIZMOS - MOOI project (2024-2025)"
    excerpt: "Congestion management at Low Voltage grid demonstration project with the day ahead steering profiles using home batteries."
    link: "https://projecten.topsectorenergie.nl/projecten/netoptimalisatie-voor-grootschalige-inpassing-zon-en-windstroom-middels-opslag-en-software-36476"
    partners: "Enexis Personeel B.V., CGI Nederland B.V., Coöperatie energieKansen U.A., Stichting Hanzehogeschool Groningen, Eindhoven Technical University"
    role: "Research, develop and deployment of the daily scheduled battery steeting algorithm for the congestion management"   
    image: "/images/NOGIZMOS.jpg"
  - title: "eNeuron - Horizon Europe Project (2020-2023)"
    excerpt: "Optimising the design and operation of local energy communities based on multi-carrier energy systems"
    link: "https://eneuron.eu/"  
    partners: "ENEA, EPRI, IEN, City of Bydgoszcz, ENEIDA.IO, IREC, UNIVPM, DERLAB, LEDE, EDP LABELEC, FOSS, SINTEF, TECNALIA, UPM, ENEA OPERATOR, ICONS, Marinha Portuguesa, Eindhoven Technical University"
    role: "Support and research for WP2 (as UNIVPM PhD candidate)"
    image: "/images/eneuron.png"

---
<style>
  .portfolio-container {
    display: flex;
    flex-direction: column;
    gap: 40px; /* Space between different projects */
  }

  .project-card {
    display: flex;
    flex-direction: column; /* Title on top, content below */
    border-bottom: 1px solid #ddd;
    padding-bottom: 20px;
  }

  .project-title {
    margin-top: 0;
    margin-bottom: 15px;
    font-size: 1em;
  }

  /* This is the box that holds the two columns */
  .project-columns {
    display: flex;
    gap: 25px; /* Space between image and text */
    align-items: center;
  }

  /* Left Column: Image */
  .project-image {
    flex: 0 0 300px; /* Forces the image column to be exactly 300px wide. Change this number to adjust width! */
  }

  .project-image img {
    width: 100%;
    height: auto;
    border-radius: 8px; /* Slightly rounded corners for a modern look */
  }

  /* Right Column: Text */
  .project-details {
    flex: 1; /* Tells the text to stretch and fill all remaining space */
  }

  .project-meta {
    list-style: none;
    padding: 0;
    margin-top: 15px;
  }

  /* Mobile responsiveness: stack vertically on small screens */
  @media (max-width: 768px) {
    .project-columns {
      flex-direction: column;
    }
    .project-image {
      flex: 0 0 auto;
      width: 100%;
    }
  }
</style>

<div class="portfolio-container">
  {% for project in page.projects %}
  <div class="project-card">
    
    <h2 class="project-title">
      <a href="{{ project.link }}" target="_blank">{{ project.title }}</a>
    </h2>
    
    <div class="project-columns">
      
      <div class="project-image">
        {% if project.image %}
          <img src="{{ project.image }}" alt="{{ project.title }}">
        {% else %}
          <img src="/images/placeholder.png" alt="No image available">
        {% endif %}
      </div>

      <div class="project-details">
        <div class="project-excerpt">
          {{ project.excerpt | markdownify }}
        </div>

        <ul class="project-meta">
          {% if project.role %}
            <li><strong>Role:</strong> {{ project.role }}</li>
          {% endif %}
          {% if project.partners %}
            <li><strong>Partners:</strong> {{ project.partners }}</li>
          {% endif %}
        </ul>
      </div>

    </div> </div>
  {% endfor %}
</div>