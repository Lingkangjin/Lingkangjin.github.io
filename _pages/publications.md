---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true

# Keep each list ordered newest first: numbering counts down from the top.
# Fields: authors, title, venue, year, link_url, quartile, status, abstract, figure
#   abstract, figure - optional; the 3 newest journal articles with an abstract are
#                      featured on the homepage (figure = graphical abstract image)
#   quartile - SCImago Journal Rank (SJR) best quartile, see https://www.scimagojr.com
#              (leave empty if the journal is not ranked yet)
#   status   - optional badge, e.g. "Early access" or "Accepted"
# The link label is "DOI" for doi.org links and "Link" otherwise. k
journal_articles:
  - authors: "<strong>Lingkang Jin</strong>, Laurens Bliek, Nikolaos G. Paterakis"
    title: "Surrogate Models in Power System Scheduling Problems: Learning Active Constraints via Graph Neural Networks"
    venue: "IEEE Transactions on Smart Grid"
    year: "2026"
    quartile: "Q1"
    status: "Early access"
    link_url: "https://doi.org/10.1109/TSG.2026.3681028"
    figure: "/images/papers/J13.svg"   # graphical abstract (homepage)
    abstract: "Power system scheduling problems are solved repeatedly and require fast computation for real time deployment of asset setpoints. Bilevel optimization is often employed due to its ability to capture the hierarchical structure between network operators and end users. However, the inherent complexity of bilevel models makes repeated solutions computationally expensive. To address this, we propose a surrogate modeling approach that predicts the set of active constraints in the full bilevel formulation, thereby significantly reducing computational effort. Rather than relying on extensive sampling over uncertain parameters, we exploit the bipartite graph structure of optimization problems and apply Graph Neural Networks (GNNs) to learn constraint activity directly by leveraging the intrinsic geometric dependencies of the optimization models. We evaluate the end to end approach by comparing the surrogate objective values and computational speedup against the original problem, benchmarking against Random Forest (RF) and Feed-foward Neural Network (FNN) classifiers across a range of increasingly complex test cases, from linear programming problems to mixed integer linear programming and bilevel problems. Results show that GNN based models, which encode mathematical properties like complementary slackness and binary activations to reduce model complexity, achieve up to 10-20x speedup with an objective deviation under 4% and a 99% optimality ratio. This represents superior performance to RFs and FNN, highlighting the suitability of GNNs for directly encoding the mathematical structure of optimization models, thanks to its inherent topology awareness to solve complex constraint activity prediction tasks in power system scheduling."
  - authors: "<strong>Lingkang Jin</strong>, Laurens Bliek, Nikolaos G. Paterakis"
    title: "Learning Active Constraints for Bilevel Optimization: Evaluating Classification Metrics on Real-World Distribution System Data"
    venue: "IEEE Transactions on Smart Grid, vol. 17, no. 2, pp. 1303–1314"
    year: "2026"
    quartile: "Q1"
    link_url: "https://doi.org/10.1109/TSG.2025.3632419"
    figure: "/images/papers/J12.svg"   # graphical abstract (homepage)
    abstract: "Bilevel optimization provides a useful power system modeling framework, but it is computationally demanding due to its NP-hard nature and the need for frequent solutions under uncertainty. To mitigate this, machine learning can be used to predict active constraints, enabling the deduction of a reduced problem formulation. However, prediction errors are inevitable, and synthetic training data may not fully reflect real-world conditions. This paper presents a structured approach to managing uncertainty by classifying constraints into three sets – active, inactive, and unpredictable – where each constraint is modeled using a separate binary classifier. The method is applied to a real-world bilevel distribution system optimization problem: the upper level solves an AC Optimal Power Flow, while the lower level minimizes residential photovoltaic power curtailment. Training data are generated from daily exact bilevel solutions, incorporating variability in electricity prices, consumption, and photovoltaic power generation. Results show that the reduced formulation effectively solves the problem, up to 10 times faster with a marginal objective value deviation (-3% to +4%)."
  - authors: "<strong>Lingkang Jin</strong>, Mosè Rossi, Andrea Monforti Ferrario, Francesca Mennilli, Gabriele Comodi"
    title: "Designing hybrid energy storage systems for steady green hydrogen production in residential areas: A GIS-based framework"
    venue: "Applied Energy, vol. 389, 125765"
    year: "2025"
    quartile: "Q1"
    link_url: "https://www.sciencedirect.com/science/article/pii/S0306261925004957"
    figure: "/images/papers/J11.svg"   # graphical abstract (homepage)
    abstract: "The constant operation of water electrolyzers prevents degradation caused by operational fluctuations, preserving performance. This study introduces a MILP-based design framework for hybrid energy storage systems, integrating photovoltaic systems, Lithium-ion batteries, and alkaline electrolyzers operating at constant rated conditions. The framework targets energy-independent residential users, fully meeting electrical loads while incorporating spatial analysis via a GIS-based management module. Applied to the Italian context, the framework uses historical data for residential end-users with 1.5–3.0 kW electrical loads. The results indicate photovoltaic systems sized between 3.0–4.5 kW, Lithium-ion batteries with 6.0–7.0 kWh capacity, and alkaline electrolyzers sized at 100–260 W for daily loads of 2.8–6.0 kWh. Lithium-ion batteries account for approximately 60% of the total system cost. A levelized hydrogen cost of 12–19 €/kg is required to cover the overall investment costs. Additionally, the system offers environmental benefits, with CO₂ emission reductions of approximately 0.35 to 0.83 tons per user annually."
  - authors: "<strong>Lingkang Jin</strong>, Rafael Nogueira Nakashima, Gabriele Comodi, Henrik Lund Frandsen"
    title: "Alkaline electrolysis for green hydrogen production: A novel, simple model for thermo-electrochemical coupled system analysis"
    venue: "Applied Thermal Engineering, vol. 262, 125154"
    year: "2025"
    quartile: "Q1"
    link_url: "https://www.sciencedirect.com/science/article/pii/S1359431124028229"
  - authors: "Francesca Mennilli, <strong>Lingkang Jin</strong>, Mosè Rossi, Gabriele Comodi"
    title: "Assessment of a NaOH-based alkaline electrolyser’s performance: System modelling and operating parameters optimisation"
    venue: "International Journal of Hydrogen Energy, vol. 85, pp. 625–634"
    year: "2024"
    quartile: "Q1"
    link_url: "https://www.sciencedirect.com/science/article/pii/S0360319924033342"
  - authors: "Mosè Rossi, <strong>Lingkang Jin</strong>, Andrea Monforti Ferrario, Marialaura Di Somma, Amedeo Buonanno, Christina Papadimitriou, Andrei Morch, Giorgio Graditi, Gabriele Comodi"
    title: "Energy Hub and Micro-Energy Hub Architecture in Integrated Local Energy Communities: Enabling Technologies and Energy Planning Tools"
    venue: "Energies, vol. 17, no. 19, 4813"
    year: "2024"
    quartile: "Q1"
    link_url: "https://www.mdpi.com/1996-1073/17/19/4813"
  - authors: "<strong>Lingkang Jin</strong>, Milad Kazemi, Gabriele Comodi, Christina Papadimitriou"
    title: "Assessing battery degradation as a key performance indicator for multi-objective optimization of multi-carrier energy systems"
    venue: "Applied Energy, vol. 361, 122925"
    year: "2024"
    quartile: "Q1"
    link_url: "https://www.sciencedirect.com/science/article/pii/S0306261924003088"
  - authors: "Andrea Pizzuti, <strong>Lingkang Jin</strong>, Mosè Rossi, Fabrizio Marinelli, Gabriele Comodi"
    title: "A novel approach for multi-stage investment decisions and dynamic variations in medium-term energy planning for multi-energy carriers community"
    venue: "Applied Energy, vol. 353, 122177"
    year: "2024"
    quartile: "Q1"
    link_url: "https://www.sciencedirect.com/science/article/pii/S0306261923015416"
  - authors: "Enrico Marchegiani, Francesco Ferracuti, Andrea Monteriù, <strong>Lingkang Jin</strong>, Mosè Rossi, Gabriele Comodi, Lucio Ciabattoni"
    title: "Li-ion battery aging model robustness: An analysis using univariate and multivariate techniques"
    venue: "Journal of Energy Storage, vol. 72, 108591"
    year: "2023"
    quartile: "Q1"
    link_url: "https://www.sciencedirect.com/science/article/pii/S2352152X23019886"
  - authors: "<strong>Lingkang Jin</strong>, Mosè Rossi, Andrea Monforti Ferrario, Jacopo Carlo Alberizzi, Massimiliano Renzi, Gabriele Comodi"
    title: "Integration of battery and hydrogen energy storage systems with small-scale hydropower plants in off-grid local energy communities"
    venue: "Energy Conversion and Management, vol. 286, 117019"
    year: "2023"
    quartile: "Q1"
    link_url: "https://www.sciencedirect.com/science/article/pii/S0196890423003655"
  - authors: "<strong>Lingkang Jin</strong>, Mosè Rossi, Lucio Ciabattoni, Marialaura Di Somma, Giorgio Graditi, Gabriele Comodi"
    title: "Environmental constrained medium-term energy planning: The case study of an Italian university campus as a multi-carrier local energy community"
    venue: "Energy Conversion and Management, vol. 278, 116701"
    year: "2023"
    quartile: "Q1"
    link_url: "https://www.sciencedirect.com/science/article/pii/S019689042300047X"
  - authors: "Anam Nadeem, Mosè Rossi, Erica Corradi, <strong>Lingkang Jin</strong>, Gabriele Comodi, Nadeem Ahmed Sheikh"
    title: "Energy-Environmental Planning of Electric Vehicles (EVs): A Case Study of the National Energy System of Pakistan"
    venue: "Energies, vol. 15, no. 9, 3054"
    year: "2022"
    quartile: "Q1"
    link_url: "https://www.mdpi.com/1996-1073/15/9/3054"
  - authors: "<strong>Lingkang Jin</strong>, Andrea Monforti Ferrario, Viviana Cigolotti, Gabriele Comodi"
    title: "Evaluation of the impact of green hydrogen blending scenarios in the Italian gas network: Optimal design and dynamic simulation of operation strategies"
    venue: "Renewable and Sustainable Energy Transition, vol. 2, 100022"
    year: "2022"
    quartile: ""
    link_url: "https://www.sciencedirect.com/science/article/pii/S2667095X2200006X"

conference_proceedings:
  - authors: "Dennis Hollanders, <strong>Lingkang Jin</strong>, Laurens Bliek, Yingqian Zhang, Sen Zhan, Jiarui Yu, Nikolaos G. Paterakis"
    title: "Graph neural networks for distribution network reconfiguration optimization"
    venue: "IEEE PES Innovative Smart Grid Technologies Conference Asia (ISGT Asia 2026), Wuhan, China"
    year: "2026"
    status: "Accepted"
    link_url: ""
  - authors: "Yuan-chun Chen, <strong>Lingkang Jin</strong>, Christina Papadimitriou"
    title: "Data-Driven Efficiency Parametrization from Operational Telemetry: Improved State-of-Energy Tracking and Aging-Aware Dispatch for BESS"
    venue: "IEEE International Energy Conference (EnergyCon 2026), Paris, France"
    year: "2026"
    status: "Accepted"
    link_url: ""
  - authors: "Ranier Alexsander Arruda Moura, Niek Brekelmans, <strong>Lingkang Jin</strong>, Khawja Khalid Mehmood, Anne van der Molen, Peter van der Wielen, Phuong Hong Nguyen"
    title: "A Hybrid Load Synthesizing Model Applied to Distribution Transformer Thermal Degradation"
    venue: "Energy Informatics Conference 2026, Beijing, China"
    year: "2026"
    link_url: "https://link.springer.com/chapter/10.1007/978-3-032-41864-7_23"
  - authors: "<strong>Lingkang Jin</strong>, Ranier Alexsander Arruda Moura, Anne van der Molen, Peter van der Wielen, Phuong Hong Nguyen"
    title: "Operational Decision Map for Grid Operators: Orchestration of Grid and User Assets Through Scenario Based Multi-objective Optimization"
    venue: "Nordic Energy Informatics Academy Conference (EIA Nordic 2026), Reykjavik, Iceland"
    year: "2026"
    status: "Accepted"
    link_url: ""
  - authors: "<strong>Lingkang Jin</strong>, Laurens Bliek, Xin Li, Nikolaos G. Paterakis"
    title: "Graph neural networks for active constraints detection in home energy management systems"
    venue: "International Conference on Smart Energy Systems and Technologies (SEST 2026), Ciudad Real, Spain"
    year: "2026"
    link_url: "https://ieeexplore.ieee.org/document/11712526"
  - authors: "Sen Zhan, <strong>Lingkang Jin</strong>, Xin Li, Haoyang Zhang, Nikolaos G. Paterakis"
    title: "Real-time feedback optimization for distribution system operation considering battery voltage and thermal constraints"
    venue: "International Conference on Smart Energy Systems and Technologies (SEST 2026), Ciudad Real, Spain"
    year: "2026"
    link_url: "https://ieeexplore.ieee.org/document/11712283"
  - authors: "<strong>Lingkang Jin</strong>, Sen Zhan, Haoyang Zhang, Nikolaos G. Paterakis"
    title: "Multi-Objective Congestion Management in Low-Voltage Grids: Coordinating End-Users and System Operators for Real-World Implementation"
    venue: "IEEE PES Innovative Smart Grid Technologies Conference Europe (ISGT Europe 2025), Valletta, Malta"
    year: "2025"
    link_url: "https://doi.org/10.1109/ISGTEurope64741.2025.11305401"
  - authors: "<strong>Lingkang Jin</strong>, Sen Zhan, Samuel Cudjoe, Nikolaos G. Paterakis"
    title: "Empowering Low-Voltage Grids: Real-World Implementation of Home Batteries for Effective Congestion Management"
    venue: "IEEE PowerTech 2025, Kiel, Germany"
    year: "2025"
    link_url: "https://doi.org/10.1109/PowerTech59965.2025.11180463"
  - authors: "Xin Li, Jeroen J. Markus, Stefan De Lange, <strong>Lingkang Jin</strong>, Koen Kok, Nikolaos G. Paterakis"
    title: "Hybrid Heat Pump Flexibility Allocation: Quantified Thermal Comfort-Based Congestion Management"
    venue: "IEEE International Conference on Environment and Electrical Engineering (EEEIC / I&amp;CPS Europe 2025)"
    year: "2025"
    link_url: "https://doi.org/10.1109/EEEIC/ICPSEurope64998.2025.11169153"
  - authors: "Haoyang Zhang, <strong>Lingkang Jin</strong>, Koen Kok, Nikolaos G. Paterakis"
    title: "Surrogate Model-Based Reinforcement Learning for Bidding Strategies in Local Flexibility Markets"
    venue: "IEEE International Conference on Environment and Electrical Engineering (EEEIC / I&amp;CPS Europe 2025)"
    year: "2025"
    link_url: "https://doi.org/10.1109/EEEIC/ICPSEurope64998.2025.11169071"
  - authors: "<strong>Lingkang Jin</strong>, Xin Li, Stefan De Lange, Han Slootweg, Nikolaos G. Paterakis"
    title: "Response Allocation of Domestic Hybrid Heat Pumps Flexibility for Congestion Management"
    venue: "IEEE PES Innovative Smart Grid Technologies Conference Europe (ISGT Europe 2024), Dubrovnik, Croatia"
    year: "2024"
    link_url: "https://doi.org/10.1109/ISGTEUROPE62998.2024.10863630"
  - authors: "Marialaura Di Somma, <strong>Lingkang Jin</strong>, Nicola Bianco, Christina Papadimitriou"
    title: "Advancing Multi-Energy Hub Design: an Integrated Approach for Optimizing Residential Clusters in High RES Penetration Scenarios"
    venue: "International Conference on Smart Energy Systems and Technologies (SEST 2024), Turin, Italy"
    year: "2024"
    link_url: "https://doi.org/10.1109/SEST61601.2024.10694519"
  - authors: "Francesca Mennilli, <strong>Lingkang Jin</strong>, Mosè Rossi, Gabriele Comodi"
    title: "A Fitting Process for the Optimal Modelling of an Anion Exchange Membrane (AEM) Electrolyser"
    venue: "Proceedings of the ASME Turbo Expo 2024: Power for Land, Sea, and Air, London, United Kingdom"
    year: "2024"
    link_url: ""
  - authors: "<strong>Lingkang Jin</strong>, Mosè Rossi, Flavio Caresana, Leonardo Pelagalli, Gabriele Comodi"
    title: "Metal hydrides in hydrogen storage: optimization of dynamic control strategies"
    venue: "Journal of Physics: Conference Series, vol. 2648, 012056 (78th ATI Congress, Carpi, Italy)"
    year: "2023"
    link_url: "https://doi.org/10.1088/1742-6596/2648/1/012056"
  - authors: "Francesca Mennilli, <strong>Lingkang Jin</strong>, Mosè Rossi, Alice Mugnini, Gabriele Comodi"
    title: "Energy analysis of a hydrogen integrated system in the residential sector"
    venue: "Journal of Physics: Conference Series, vol. 2648, 012057 (78th ATI Congress, Carpi, Italy)"
    year: "2023"
    link_url: "https://doi.org/10.1088/1742-6596/2648/1/012057"
  - authors: "Jacopo Carlo Alberizzi, Miguel Angel Pérez Estevez, Massimiliano Renzi, <strong>Lingkang Jin</strong>, Mosè Rossi, Alessandro Alberizzi"
    title: "Optimal Management of a Hydro–Wind Energy System with Hydrogen Storage"
    venue: "12th International Conference on Power Science and Engineering (ICPSE 2023)"
    year: "2023"
    link_url: "https://doi.org/10.1109/ICPSE59506.2023.10329307"
  - authors: "Marialaura Di Somma, Amedeo Buonanno, Martina Caliano, <strong>Lingkang Jin</strong>, Mosè Rossi, Giorgio Graditi, Gabriele Comodi"
    title: "Stochastic energy management for the Italian UNIVPM campus as a multi-carrier energy hub participating in the day-ahead market"
    venue: "IEEE EUROCON 2023 – 20th International Conference on Smart Technologies, Turin, Italy"
    year: "2023"
    link_url: "https://doi.org/10.1109/EUROCON56442.2023.10199000"
  - authors: "Andreas Bechmann, Thanasis Barlas, Henrik Lund Frandsen, <strong>Lingkang Jin</strong>, Rafael Nogueira Nakashima"
    title: "The Hydrogen Wind Turbine: Design of a wind turbine optimised for hydrogen production"
    venue: "Journal of Physics: Conference Series, vol. 2507, 012010"
    year: "2023"
    link_url: "https://doi.org/10.1088/1742-6596/2507/1/012010"
  - authors: "<strong>Lingkang Jin</strong>, Rafael Nogueira Nakashima, Henrik Lund Frandsen, Gabriele Comodi"
    title: "Alkaline Electrolysis for Green Hydrogen Production: Techno-Economic Analysis of Temperature Influence and Control"
    venue: "Proceedings of the 36th International Conference on Efficiency, Cost, Optimization, Simulation and Environmental Impact of Energy Systems (ECOS 2023), Las Palmas de Gran Canaria, Spain"
    year: "2023"
    link_url: "https://doi.org/10.52202/069564-0082"
  - authors: "Sara Gremi, Mosè Rossi, <strong>Lingkang Jin</strong>, Matteo Lorenzetti, Danilo Salvi, Alessia Arteconi, Gabriele Comodi"
    title: "Thermal Energy Storage (TES) application in an Italian District Heating (DH) network: A Computational Fluid Dynamic (CFD) analysis to assess the operating efficiency"
    venue: "Proceedings of the 35th International Conference on Efficiency, Cost, Optimization, Simulation and Environmental Impact of Energy Systems (ECOS 2022), Copenhagen, Denmark"
    year: "2022"
    link_url: "https://backend.orbit.dtu.dk/ws/portalfiles/portal/335878894/ECOS_2022_proceedings.pdf"
---

{% assign all_pubs = page.journal_articles | concat: page.conference_proceedings %}
{% assign first_author = 0 %}
{% for p in all_pubs %}{% assign head = p.authors | slice: 0, 8 %}{% if head == "<strong>" %}{% assign first_author = first_author | plus: 1 %}{% endif %}{% endfor %}
{% assign q1_count = page.journal_articles | where: "quartile", "Q1" | size %}

<p class="section-intro">Full and up-to-date list on <a href="{{ site.author.googlescholar }}" target="_blank" rel="noopener noreferrer">Google Scholar</a>. Journal tags give the <a href="https://www.scimagojr.com" target="_blank" rel="noopener noreferrer">SCImago (SJR)</a> best quartile of the journal.</p>

{% assign oa = site.data.openalex %}
<section class="pub-summary" aria-label="Publication summary">

<ul class="stat-row stat-row--compact">
  <li><strong>{{ page.journal_articles | size }}</strong>journal articles</li>
  <li><strong>{{ q1_count }}</strong>in Q1 journals</li>
  <li><strong>{{ page.conference_proceedings | size }}</strong>conference papers</li>
  <li><strong>{{ first_author }}</strong>as first author</li>
  <li class="stat-row__oa"><strong data-oa="cited_by_count">{{ oa.cited_by_count }}</strong>citations</li>
  <li class="stat-row__oa"><strong data-oa="h_index">{{ oa.h_index }}</strong>h-index</li>
</ul>

<div class="pub-summary__panels">
{% comment %} ── Publications per year: stacked bars (journal below, conference above) ── {% endcomment %}
{% assign pub_years = all_pubs | map: "year" | uniq | sort %}
{% assign max_total = 0 %}
{% for y in pub_years %}
  {% assign n = all_pubs | where: "year", y | size %}
  {% if n > max_total %}{% assign max_total = n %}{% endif %}
{% endfor %}

<figure class="pub-chart" aria-labelledby="pub-chart-title">
  <figcaption id="pub-chart-title" class="pub-chart__title">Publications per year
    <span class="pub-chart__legend">
      <span><i class="pub-chart__key pub-chart__key--journal"></i>Journal</span>
      <span><i class="pub-chart__key pub-chart__key--conference"></i>Conference</span>
    </span>
  </figcaption>
  <div class="pub-chart__plot" role="img" aria-label="Bar chart of journal and conference publications per year; the same numbers are in the table below.">
    {% for y in pub_years %}
      {% assign nj = page.journal_articles | where: "year", y | size %}
      {% assign nc = page.conference_proceedings | where: "year", y | size %}
      {% assign nt = nj | plus: nc %}
      <div class="pub-chart__col" tabindex="0" data-tip="{{ y }}: {{ nj }} journal, {{ nc }} conference">
        <span class="pub-chart__total">{{ nt }}</span>
        <div class="pub-chart__stack" style="height: {{ nt | times: 100.0 | divided_by: max_total }}%">
          {% if nc > 0 %}<span class="pub-chart__seg pub-chart__seg--conference" style="flex-grow: {{ nc }}"></span>{% endif %}
          {% if nj > 0 %}<span class="pub-chart__seg pub-chart__seg--journal" style="flex-grow: {{ nj }}"></span>{% endif %}
        </div>
        <span class="pub-chart__year">{{ y }}</span>
      </div>
    {% endfor %}
  </div>
  <details class="pub-chart__table">
    <summary>Show as table</summary>
    <table>
      <thead><tr><th>Year</th><th>Journal</th><th>Conference</th><th>Total</th></tr></thead>
      <tbody>
      {% for y in pub_years reversed %}
        {% assign nj = page.journal_articles | where: "year", y | size %}
        {% assign nc = page.conference_proceedings | where: "year", y | size %}
        <tr><td>{{ y }}</td><td>{{ nj }}</td><td>{{ nc }}</td><td>{{ nj | plus: nc }}</td></tr>
      {% endfor %}
      </tbody>
    </table>
  </details>
</figure>

<figure class="pub-topics" aria-labelledby="pub-topics-title">
  <figcaption id="pub-topics-title" class="pub-chart__title">Main research topics <span class="pub-chart__legend">works per topic</span></figcaption>
  {% assign max_topic = oa.topics | map: "count" | first %}
  <ul class="pub-topics__list" data-oa-topics>
    {% for t in oa.topics limit: 5 %}
    <li title="{{ t.name }} ({{ t.field }}): {{ t.count }} works">
      <span class="pub-topics__name">{{ t.name }}</span>
      <span class="pub-topics__bar"><i style="width: {{ t.count | times: 100.0 | divided_by: max_topic }}%"></i></span>
      <span class="pub-topics__count">{{ t.count }}</span>
    </li>
    {% endfor %}
  </ul>
</figure>
</div>

<p class="pub-summary__source">Citations, h-index and topics: <a href="https://openalex.org/{{ oa.author_id }}" target="_blank" rel="noopener noreferrer">OpenAlex</a>, <span data-oa-updated>snapshot of {{ oa.updated | date: "%-d %b %Y" }}</span>. Topic counts include all indexed works.</p>
</section>

<script>
/* Refresh citations, h-index and topics live from OpenAlex; keep the snapshot if it fails */
(function () {
  fetch("https://api.openalex.org/authors/{{ oa.author_id }}")
    .then(function (r) { if (!r.ok) throw new Error(r.status); return r.json(); })
    .then(function (a) {
      var set = function (k, v) { var el = document.querySelector('[data-oa="' + k + '"]'); if (el && v != null) el.textContent = v; };
      set("cited_by_count", a.cited_by_count);
      set("h_index", a.summary_stats && a.summary_stats.h_index);
      var topics = (a.topics || []).slice(0, 5);
      if (topics.length) {
        var max = topics[0].count, ul = document.querySelector("[data-oa-topics]");
        ul.innerHTML = topics.map(function (t) {
          var esc = function (s) { var d = document.createElement("div"); d.textContent = s; return d.innerHTML; };
          return '<li title="' + esc(t.display_name) + ": " + t.count + ' works"><span class="pub-topics__name">' + esc(t.display_name) +
            '</span><span class="pub-topics__bar"><i style="width:' + (100 * t.count / max) + '%"></i></span><span class="pub-topics__count">' + t.count + "</span></li>";
        }).join("");
      }
      var up = document.querySelector("[data-oa-updated]");
      if (up) up.textContent = "live data";
    })
    .catch(function () { /* snapshot stays */ });
})();
</script>

{% comment %} ── Filters and search (one row above the lists) ── {% endcomment %}
<div class="pub-filters" role="group" aria-label="Filter publications">
  <div class="pub-filters__chips">
    <button type="button" class="chip is-active" data-filter="all" aria-pressed="true">All</button>
    <button type="button" class="chip" data-filter="journal" aria-pressed="false">Journal</button>
    <button type="button" class="chip" data-filter="conference" aria-pressed="false">Conference</button>
    <button type="button" class="chip" data-filter="first" aria-pressed="false">First author</button>
    <button type="button" class="chip" data-filter="q1" aria-pressed="false">Q1</button>
  </div>
  {%- assign all_pubs = page.journal_articles | concat: page.conference_proceedings -%}
  {%- assign pub_years = all_pubs | map: "year" | uniq | sort | reverse %}
  <select class="pub-filters__year" aria-label="Filter by year">
    <option value="">All years</option>
    {%- for y in pub_years %}
    <option value="{{ y }}">{{ y }}</option>
    {%- endfor %}
  </select>
  <input type="search" class="pub-filters__search" placeholder="Search title, author, venue…" aria-label="Search publications">
  <span class="pub-filters__count" aria-live="polite"></span>
</div>

<h2 id="journal-articles">Journal articles</h2>

{% include pub-timeline.html items=page.journal_articles prefix="J" type="journal" %}

<h2 id="conference-proceedings">Conference proceedings</h2>

{% include pub-timeline.html items=page.conference_proceedings prefix="C" type="conference" %}

<p class="pub-empty" hidden>No publications match this filter.</p>

<script>
(function () {
  var items = Array.prototype.slice.call(document.querySelectorAll(".pub-list li[data-type]"));
  var chips = document.querySelectorAll(".pub-filters .chip");
  var search = document.querySelector(".pub-filters__search");
  /* /publications/?q=name pre-fills the search (linked from the teaching page) */
  var q0 = new URLSearchParams(location.search).get("q");
  if (q0) search.value = q0;
  /* year dropdown; /publications/?year=2025 pre-selects it */
  var yearSel = document.querySelector(".pub-filters__year");
  var y0 = new URLSearchParams(location.search).get("year");
  if (y0 && yearSel.querySelector('option[value="' + y0 + '"]')) yearSel.value = y0;
  var count = document.querySelector(".pub-filters__count");
  var empty = document.querySelector(".pub-empty");
  var filter = "all";

  function matches(li, q) {
    if (filter === "journal" || filter === "conference") { if (li.dataset.type !== filter) return false; }
    if (filter === "first" && li.dataset.first !== "1") return false;
    if (filter === "q1" && li.dataset.q !== "Q1") return false;
    if (yearSel.value && li.dataset.year !== yearSel.value) return false;
    if (q) {
      var text = li.querySelector(".entry-body").cloneNode(true);
      var box = text.querySelector(".cite-box"); if (box) box.remove();
      if (text.textContent.toLowerCase().indexOf(q) === -1) return false;
    }
    return true;
  }

  function apply() {
    var q = search.value.trim().toLowerCase();
    var shown = 0;
    items.forEach(function (li) {
      var ok = matches(li, q);
      li.hidden = !ok;
      if (ok) shown++;
    });
    /* hide empty year blocks, and a whole section when nothing in it matches */
    document.querySelectorAll(".pub-list").forEach(function (list) {
      var any = false;
      list.querySelectorAll(".timeline__block").forEach(function (b) {
        var vis = b.querySelector("li[data-type]:not([hidden])") !== null;
        b.hidden = !vis;
        any = any || vis;
      });
      list.hidden = !any;
      var h = list.previousElementSibling;
      while (h && h.tagName !== "H2") h = h.previousElementSibling;
      if (h) h.hidden = !any;
    });
    count.textContent = shown === items.length ? items.length + " publications" : "Showing " + shown + " of " + items.length;
    empty.hidden = shown !== 0;
  }

  chips.forEach(function (c) {
    c.addEventListener("click", function () {
      filter = c.dataset.filter;
      chips.forEach(function (o) {
        var on = o === c;
        o.classList.toggle("is-active", on);
        o.setAttribute("aria-pressed", on ? "true" : "false");
      });
      apply();
    });
  });
  search.addEventListener("input", apply);
  yearSel.addEventListener("change", apply);
  apply();

  /* Cite: show / hide the BibTeX entry and copy it */
  document.querySelectorAll(".cite-btn").forEach(function (btn) {
    btn.addEventListener("click", function () {
      var box = btn.nextElementSibling;
      box.hidden = !box.hidden;
      btn.setAttribute("aria-expanded", box.hidden ? "false" : "true");
    });
  });
  document.querySelectorAll(".cite-copy").forEach(function (btn) {
    btn.addEventListener("click", function () {
      var text = btn.previousElementSibling.textContent;
      var done = function () { btn.textContent = "Copied ✓"; setTimeout(function () { btn.textContent = "Copy BibTeX"; }, 1500); };
      if (navigator.clipboard && navigator.clipboard.writeText) {
        navigator.clipboard.writeText(text).then(done, function () { fallback(text); done(); });
      } else { fallback(text); done(); }
    });
  });
  function fallback(text) {
    var ta = document.createElement("textarea");
    ta.value = text; document.body.appendChild(ta); ta.select();
    try { document.execCommand("copy"); } catch (e) {}
    ta.remove();
  }
})();
</script>
