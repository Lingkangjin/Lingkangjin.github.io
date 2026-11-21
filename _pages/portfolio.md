---
layout: archive
title: "Projects"
permalink: /portfolio/
author_profile: true

# Projects are listed in the order below (most recent first). The CV links here.
# Fields: title, subtitle, period, funding, excerpt, link, role, partners (list), image,
#         outputs (list of { label, url }; papers, talks or software from the project)
# show_images: true shows each project's `image` (logo/photo) next to the card.
show_images: false
projects:
  - title: "SG-SKILL"
    subtitle: "Skill-based education for smart-grid job profiles"
    period: "2026 – present"
    funding: "Erasmus+ EU project"
    excerpt: "European project strengthening Europe's workforce for the digital, green and resilient transformation of electricity grids."
    link: "https://sgskill.eddie-skills.eu/"
    role: "Leader of Tasks 2.3 and 4.2; contributor to WP2 and WP3."
    image: "/images/SG_SKIL.png"
    partners:
      - Comillas Pontifical University
      - Politecnico di Milano
      - RWTH Aachen University
      - University of Cyprus
      - Eindhoven University of Technology
      - National Technical University of Athens
      - CIEMAT
      - ZABALA Innovation
      - NOVEL Group
      - Padre Piquer Foundation
      - iCert
      - E.DSO
      - T&D Europe
      - GAIA
      - Iberdrola Group

  - title: "ORKEST"
    subtitle: "Optimal integration of network flexibility and asset intelligence"
    period: "2025 – present"
    funding: "RVO-MOOI (Netherlands Enterprise Agency)"
    excerpt: "Coordination and orchestration of grid and user assets to solve congestion caused by the growing share of renewables, while maintaining component reliability."
    link: "https://projecten.topsectorenergie.nl/projecten/orkest-optimal-integration-of-network-flexibiilty-and-asset-intelligence-to-increase-large-scale-integration-of-res-while-maintaining-reliability-37711"
    role: "Leader of Result 4: development and integration of the optimization module."
    outputs:
      - label: "Operational decision map for grid operators (EIA Nordic 2026)"
        url: "/publications/"
    image: "/images/orkest.jpg"
    partners:
      - Stedin
      - DNV Netherlands B.V.
      - Netbeheer Nederland
      - Phase to Phase B.V.
      - Technolution B.V.
      - Eindhoven University of Technology

  - title: "NO-GIZMOS"
    subtitle: "Grid optimisation for large-scale integration of solar and wind via storage and software"
    period: "2024 – 2025"
    funding: "RVO-MOOI (Netherlands Enterprise Agency)"
    excerpt: "Demonstration of low-voltage congestion management using day-ahead steering profiles for home batteries."
    link: "https://projecten.topsectorenergie.nl/projecten/netoptimalisatie-voor-grootschalige-inpassing-zon-en-windstroom-middels-opslag-en-software-36476"
    role: "Research, development and deployment of the day-ahead home-battery steering algorithm for congestion management (5–6% grid relief in a low-voltage demonstrator)."
    outputs:
      - label: "Real-world home batteries for LV congestion management (IEEE PowerTech 2025)"
        url: "https://doi.org/10.1109/PowerTech59965.2025.11180463"
      - label: "Multi-objective LV congestion management with end-users and operators (ISGT Europe 2025)"
        url: "https://doi.org/10.1109/ISGTEurope64741.2025.11305401"
    image: "/images/NOGIZMOS.jpg"
    partners:
      - Enexis Personeel B.V.
      - CGI Nederland B.V.
      - Coöperatie energieKansen U.A.
      - Hanze University of Applied Sciences Groningen
      - Eindhoven University of Technology

  - title: "GRETHA"
    subtitle: "A novel GReen Energy Technology based on fuel cells, Hydrogen And renewables"
    period: "2023 – 2024"
    funding: "Italian Ministry project"

  - title: "eNeuron"
    subtitle: "Greening the energy system through local energy communities"
    period: "2020 – 2023"
    funding: "Horizon 2020"
    excerpt: "Optimising the design and operation of local energy communities based on multi-carrier energy systems."
    link: "https://eneuron.eu/"
    role: "Research support for WP2 (as PhD candidate at UNIVPM)."
    image: "/images/eneuron.png"
    partners:
      - ENEA
      - EPRI
      - IEN
      - City of Bydgoszcz
      - ENEIDA.IO
      - IREC
      - UNIVPM
      - DERlab
      - LEDE
      - EDP Labelec
      - FOSS
      - SINTEF
      - TECNALIA
      - UPM
      - ENEA Operator
      - ICONS
      - Portuguese Navy (Marinha Portuguesa)
      - Eindhoven University of Technology

  - title: "Ricerca di Sistema Elettrico"
    subtitle: "Methodology for the optimal energy-economic planning of a multi-energy system energy community in the medium to long term"
    period: "2020 – 2022"
    funding: "Italian Ministry project"

  - title: "RECITY"
    subtitle: "Resilient City: Everyday Revolution"
    period: "2022"
    funding: "Italian Ministry project"
---

{% comment %}
  Styles are kept inline so this page is self-contained.
  To reuse them site-wide, move the CSS into assets/css/main.scss.
{% endcomment %}

<style>
  .portfolio {
    --card-gap: 1.75rem;
    --img-width: 260px;
    --muted: var(--ac-muted);
    --border: var(--ac-line);
    --badge-bg: var(--ac-info-bg);
    --badge-fg: var(--ac-info-fg);
    display: flex;
    flex-direction: column;
    gap: var(--card-gap);
    margin-top: 1rem;
  }

  .project {
    display: grid;
    grid-template-columns: var(--img-width) 1fr;
    gap: 1.5rem;
    align-items: start;
    padding-bottom: var(--card-gap);
    border-bottom: 1px solid var(--border);
  }
  .project:last-child { border-bottom: none; }

  .project__media {
    aspect-ratio: 16 / 10;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #fff;
    border: 1px solid var(--border);
    border-radius: 8px;
    padding: 0.75rem;
    overflow: hidden;
  }
  .project__media img {
    max-width: 100%;
    max-height: 100%;
    object-fit: contain;
  }

  .project__title {
    margin: 0 0 0.15rem;
    font-size: 1.15em;
    line-height: 1.3;
  }
  .project__title a { text-decoration: none; }
  .project__title a:hover { text-decoration: underline; }

  .project__subtitle {
    margin: 0 0 0.5rem;
    color: var(--muted);
    font-size: 0.85em;
    font-style: italic;
  }

  .project__tags {
    display: flex;
    flex-wrap: wrap;
    gap: 0.4rem;
    margin-bottom: 0.75rem;
  }
  .project__tag {
    font-size: 0.7em;
    padding: 0.15rem 0.55rem;
    border-radius: 999px;
    background: var(--badge-bg);
    color: var(--badge-fg);
    white-space: nowrap;
  }
  .project__tag--period { background: var(--ac-neutral-bg); color: var(--ac-neutral-fg); }

  .project__excerpt { font-size: 0.9em; }
  .project__excerpt p { margin: 0 0 0.75rem; }

  .project__meta {
    list-style: none;
    margin: 0;
    padding: 0;
    font-size: 0.85em;
  }
  .project__meta li { margin-bottom: 0.4rem; }

  .project__partners summary {
    cursor: pointer;
    font-weight: bold;
  }
  .project__partners p {
    margin: 0.4rem 0 0;
    color: var(--muted);
  }
  .project__partners summary { color: var(--ac-accent); }
  .project__outputs {
    margin: 0.4rem 0 0 1.1rem;
    padding: 0;
    list-style: disc;
  }
  .project__outputs li { margin-bottom: 0.2rem; }

  /* Text-only cards (show_images: false) */
  .project--text { grid-template-columns: 1fr; }

  @media (max-width: 768px) {
    .project { grid-template-columns: 1fr; }
    .project__media { max-width: 360px; }
  }
</style>

<div class="portfolio">
{% for project in page.projects %}
  <article class="project{% unless page.show_images %} project--text{% endunless %}">

    {% if page.show_images and project.image %}
    <div class="project__media">
      <img src="{{ project.image | relative_url }}"
           alt="{{ project.title }} logo"
           loading="lazy">
    </div>
    {% endif %}

    <div class="project__body">
      <h2 class="project__title">
        {% if project.link %}
          <a href="{{ project.link }}" target="_blank" rel="noopener noreferrer">{{ project.title }}</a>
        {% else %}
          {{ project.title }}
        {% endif %}
      </h2>

      {% if project.subtitle %}
        <p class="project__subtitle">{{ project.subtitle }}</p>
      {% endif %}

      <div class="project__tags">
        {% if project.period %}<span class="project__tag project__tag--period">{{ project.period }}</span>{% endif %}
        {% if project.funding %}<span class="project__tag">{{ project.funding }}</span>{% endif %}
      </div>

      <div class="project__excerpt">
        {{ project.excerpt | markdownify }}
      </div>

      <ul class="project__meta">
        {% if project.role %}
          <li><strong>Role:</strong> {{ project.role }}</li>
        {% endif %}
        {% if project.outputs %}
          <li>
            <details class="project__partners">
              <summary>Outputs ({{ project.outputs | size }})</summary>
              <ul class="project__outputs">
                {% for o in project.outputs %}
                  {% if o.url contains "http" %}
                  <li><a href="{{ o.url }}" target="_blank" rel="noopener noreferrer">{{ o.label }}</a></li>
                  {% else %}
                  <li><a href="{{ o.url | relative_url }}">{{ o.label }}</a></li>
                  {% endif %}
                {% endfor %}
              </ul>
            </details>
          </li>
        {% endif %}
        {% if project.partners %}
          <li>
            <details class="project__partners">
              <summary>Partners ({{ project.partners | size }})</summary>
              <p>{{ project.partners | join: " · " }}</p>
            </details>
          </li>
        {% endif %}
      </ul>
    </div>

  </article>
{% endfor %}
</div>