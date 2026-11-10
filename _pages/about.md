---
permalink: /
title: "Lingkang Jin, Ph.D."
author_profile: true
redirect_from:
  - /about/
  - /about.html

# Items dated after the site build appear under "Upcoming";
# items from the last `news_new_days` days get a "New" badge.
# Years older than last year are folded into "Show older news".
news_new_days: 30

# `date` (YYYY-MM-DD) drives sorting and grouping.
# `label` is optional and replaces the displayed date (for ranges).
news:
  - date: 2026-12-16
    text: "Main organizer, <a href='https://ees-tue.github.io/EES-research-day/2026/' target='_blank' rel='noopener noreferrer'>EES Research Day 2026</a>, Eindhoven"
  - date: 2026-10-28
    text: "Chair, <a href='/talks/seminars/#bilevel-optimization'>cross-sectoral talk on bilevel optimization</a>, TU/e (Dr. Yasmine Beck)"
  - date: 2026-10-14
    text: "Chair, <a href='/talks/seminars/#stedin-asset-management'>industry perspective talk on asset management</a>, TU/e (Stedin)"
  - date: 2026-10-09
    text: "<a href='/portfolio/'>ORKEST</a> Q3 2026 demo event on project results, Stedin, Utrecht"
  - date: 2026-10-05
    text: "Research-career panelist, MSc professional development course, TU/e"
  - date: 2026-09-02
    label: "2–4 Sep"
    text: "Speaker, <a href='https://www.nordicenergyinformatics.academy/eia-nordic-conference-2026' target='_blank' rel='noopener noreferrer'>EIA Nordic Energy Informatics Conference 2026</a>, Reykjavik"
  - date: 2026-07-03
    text: "<a href='/portfolio/'>ORKEST</a> Q2 2026 demo event on project results, Stedin, Utrecht"
  - date: 2026-06-15
    text: "Best-paper award finalist (3-minute pitch), <a href='https://www.tue.nl/en/our-university/calendar-and-events/15-06-2026-pda-best-paper-award-2026' target='_blank' rel='noopener noreferrer'>TU/e Postdoc Association</a>"
  - date: 2026-06-10
    text: "Presenter, EuroTech stand at the <a href='https://interactive.eusew.eu/platform/eusew-2026/fair' target='_blank' rel='noopener noreferrer'>EUSEW 2026 Energy Fair</a>"
  - date: 2026-05-22
    text: "Invited talk on surrogate modeling, <a href='https://www.tue.nl/en/research/research-groups/industrial-engineering/information-systems-ieis/' target='_blank' rel='noopener noreferrer'>IE&amp;IS group</a>, TU/e (Dr. <a href='https://www.tue.nl/en/research/researchers/laurens-bliek' target='_blank' rel='noopener noreferrer'>Laurens Bliek</a>)"
  - date: 2026-04-26
    label: "26 Apr – 10 May"
    text: "EuroTech research visit, <a href='https://wind.dtu.dk/' target='_blank' rel='noopener noreferrer'>DTU Wind and Energy Systems</a>, Denmark (Dr. <a href='https://orbit.dtu.dk/en/persons/haris-ziras/' target='_blank' rel='noopener noreferrer'>Haris Ziras</a>)"
  - date: 2026-04-01
    text: "Joined Erasmus+ project <a href='https://sgskill.eddie-skills.eu/' target='_blank' rel='noopener noreferrer'>SG-SKILL</a> as TU/e representative (WP2 and WP3)"
  - date: 2025-06-15
    text: "Joined the <a href='https://projecten.topsectorenergie.nl/projecten/orkest-optimal-integration-of-network-flexibiilty-and-asset-intelligence-to-increase-large-scale-integration-of-res-while-maintaining-reliability-37711' target='_blank' rel='noopener noreferrer'>ORKEST</a> project as Result 4 leader"
  - date: 2024-03-30
    text: "PhD defense, <a href='https://tesidottorato.depositolegale.it/handle/20.500.14242/307237' target='_blank' rel='noopener noreferrer'>thesis on energy storage in multi-energy carrier communities</a>"
  - date: 2024-01-15
    text: "Started as postdoctoral researcher at TU/e, leading TU/e's work in NO-GIZMOS"
  - date: 2023-03-01
    label: "Mar – May"
    text: "Visiting PhD, TU/e Electrical Energy Systems group (Dr. <a href='https://www.tue.nl/en/research/researchers/christina-papadimitriou' target='_blank' rel='noopener noreferrer'>Christina Papadimitriou</a>)"
  - date: 2022-03-01
    label: "Mar – Sep"
    text: "Visiting PhD, DTU Energy, Denmark (Prof. <a href='https://orbit.dtu.dk/en/persons/henrik-lund-frandsen/' target='_blank' rel='noopener noreferrer'>Henrik Lund Frandsen</a>)"
  - date: 2020-10-01
    label: "Oct"
    text: "Started PhD in Industrial Engineering, UNIVPM, Italy (Prof. <a href='https://www.univpm.it/Entra/Engine/RAServePG.php/P/320710010421/idsel/590/docname/GABRIELE%20COMODI' target='_blank' rel='noopener noreferrer'>Gabriele Comodi</a>)"

# Selected open-access papers.
# `preview` is shown in the embedded viewer; `pdf` is the full paper link.
papers:
  - id: alk
    title: "Alkaline electrolysis for green hydrogen production: A novel, simple model for thermo-electrochemical coupled system analysis"
    preview: "/files/ALK.pdf"
    pdf: "/files/paper1.pdf"
  - id: batt
    title: "Assessing battery degradation as a key performance indicator for multi-objective optimization of multi-carrier energy systems"
    preview: "/files/Batt.pdf"
    pdf: "/files/paper2.pdf"
  - id: ofo
    title: "Real-time measurement-based optimization for distribution system operation considering battery voltage and thermal constraints"
    preview: "/files/OFO.pdf"
    pdf: "/files/paper3.pdf"

# Open-source repositories and PyPI releases.
software:
  - name: "liander-open-data"
    description: "Lightweight SQLite database, Python API and CLI for Liander's open 15-minute electricity load profiles per SBI code, including the dictionary of 1,427 SBI codes. Returns pandas DataFrames."
    github: "https://github.com/lingkang95/Liander_open_data"
    pypi: "https://pypi.org/project/liander-open-data/"
    install: "pip install liander-open-data"
  - name: "aec-modelling"
    description: "Alkaline water electrolysis modelling, developed with DTU: a four-parameter electrochemical polarisation model with fitting tools, 0D transient and 1D thermal stack models, and bundled literature and field datasets for power-to-hydrogen system studies."
    github: "https://github.com/Lingkangjin/AEC-Modelling"
    pypi: "https://pypi.org/project/aec-modelling/"
    install: "pip install aec-modelling"
---

<style>
  /* Timeline, badges and tagline come from _sass/layout/_academic.scss */

  /* Widen the content column on this page so the paper previews fit.
     Remove these two rules to keep the theme's default width. */
  .page { padding-right: 0 !important; }
  .page__inner-wrap { max-width: 100% !important; }

  /* ───────── Research framework diagram ───────── */
  .arch {
    max-width: 1000px;
    margin: 1rem auto;
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 8px;
  }
  .arch__row, .arch__branch {
    display: flex;
    align-items: stretch;
    justify-content: center;
    gap: 10px;
  }
  .arch__row { width: 100%; }

  .arch__box {
    display: flex;
    flex-direction: column;
    padding: 12px;
    border: 1px solid #C9DBEF;
    border-radius: 6px;
    text-align: center;
    box-shadow: 0 1px 3px rgba(31, 41, 55, 0.06);
    color: #1F2937;
  }
  .arch__box h4 { margin: 0 0 10px; font-size: 0.95rem; color: #1F5FA8; }
  .arch__box--physics { background: #F5F8FC; }
  .arch__box--ai      { background: #DCE9F7; }
  .arch__box--center  { background: #fff; border: 2px solid #7FB2E5; width: 200px; justify-content: center; }

  .arch__final {
    width: 80%;
    padding: 15px 30px;
    background: #1F5FA8;
    border-radius: 6px;
    font-size: 1.1rem;
    font-weight: bold;
    text-align: center;
    color: #fff;
    box-shadow: 0 2px 6px rgba(31, 95, 168, 0.25);
  }

  .arch__arrow {
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 2rem;
    font-weight: bold;
    color: var(--ac-muted);
  }
  .arch__arrow--down { font-size: 2.4rem; margin: -14px 0; line-height: 1; }

  .arch__grid2 { display: grid; grid-template-columns: 1fr 1fr; gap: 15px; }
  .arch__stack { display: flex; flex-direction: column; align-items: center; justify-content: center; gap: 10px; }

  .arch__item {
    display: flex;
    flex-direction: column;
    align-items: center;
    font-size: 0.85em;
    font-weight: bold;
    line-height: 1.2;
    transition: transform 0.2s ease;
  }
  .arch__item:hover { transform: scale(1.05); }
  .arch__item img {
    width: 45px;
    height: 45px;
    object-fit: contain;
    margin-bottom: 5px;
  }
  .arch__item--lg img { width: 80px; height: 80px; }

  .arch__etc { margin-top: auto; padding-top: 8px; text-align: right; font-size: 0.9em; font-weight: bold; }

  @media (max-width: 950px) {
    .arch__row, .arch__branch { flex-direction: column; align-items: center; width: 100%; }
    .arch__arrow { transform: rotate(90deg); padding: 0; line-height: 1; }
    .arch__box--center { width: 100%; max-width: 350px; }
    .arch__final { width: 100%; }
  }

  @media (prefers-reduced-motion: reduce) {
    .arch__item { transition: none; }
    .arch__item:hover { transform: none; }
  }

  /* ───────── Papers ───────── */
  .papers {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
    gap: 1.25rem;
  }
  .paper { display: flex; flex-direction: column; text-align: center; }
  .paper__frame {
    width: 100%;
    height: 350px;
    border: 1px solid var(--ac-line);
    background: #fff;
    box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
  }
  .paper__actions { display: flex; gap: 0.5rem; justify-content: center; margin-top: 0.6rem; }
  .paper__btn {
    padding: 0.45rem 0.8rem;
    border: none;
    border-radius: 4px;
    background: var(--ac-btn-bg);
    color: #fff !important;
    font-size: 0.8em;
    font-weight: bold;
    text-decoration: none !important;
    cursor: pointer;
    transition: background-color 0.2s ease;
  }
  .paper__btn:hover { background: var(--ac-btn-bg-hover); }
  .paper__title { font-size: 0.9em; line-height: 1.3; margin: 0.7rem 0 0; font-weight: bold; }
  .paper__title a { text-decoration: none; }

  /* ───────── Software ───────── */
  .software {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 1.25rem;
  }
  .software__card {
    display: flex;
    flex-direction: column;
    padding: 1rem;
    border: 1px solid var(--ac-line);
    border-radius: 6px;
    box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.05);
  }
  .software__name { margin: 0 0 0.4rem; font-size: 1rem; font-family: monospace; }
  .software__desc { margin: 0 0 0.7rem; font-size: 0.85em; line-height: 1.4; }
  .software__install {
    margin: 0 0 0.8rem;
    padding: 0.35rem 0.6rem;
    border-radius: 4px;
    background: rgba(127, 127, 127, 0.12);
    font-size: 0.8em;
    overflow-x: auto;
  }
  .software__card .paper__actions { justify-content: flex-start; margin-top: auto; }

  /* Mobile browsers rarely render PDFs inside iframes: show the buttons only */
  @media (max-width: 768px), (hover: none) {
    .paper__frame, .paper__btn--fs { display: none; }
    .paper { text-align: left; padding: 0.8rem; border: 1px solid var(--ac-line); border-radius: 6px; }
    .paper__title { margin-top: 0; }
    .paper__actions { justify-content: flex-start; order: 2; }
  }
</style>

{% assign now_s     = site.time | date: "%s" | plus: 0 %}
{% assign this_year = site.time | date: "%Y" | plus: 0 %}
{% assign last_year = this_year | minus: 1 %}
{% assign new_s     = page.news_new_days | default: 30 | times: 86400 %}
{% assign icons     = "/images/icons/" | relative_url %}

<p class="tagline">Energy systems researcher · Optimization modeler · Data scientist</p>

Lingkang is a postdoctoral researcher in the Electrical Energy Systems group, Department of Electrical Engineering, Eindhoven University of Technology (TU/e), the Netherlands, and a member of EIRES.

His research brings **detailed multi-physics models of energy assets into system-level decision making**, using mathematical programming supported by AI and machine learning to cut computational cost and improve scenario generation. He works closely with grid operators on congestion management and teaches in the MSc course *5LEP0 Electricity Markets: Modeling and Optimization*.

## News and updates

{% assign news_sorted = page.news | sort: "date" | reverse %}

<div class="timeline">

{% comment %} ── Upcoming (oldest first, so the next event is on top) ── {% endcomment %}
{% assign upcoming = "" | split: "" %}
{% for n in news_sorted %}
  {% assign n_s = n.date | date: "%s" | plus: 0 %}
  {% if n_s > now_s %}{% assign upcoming = upcoming | push: n %}{% endif %}
{% endfor %}

{% if upcoming.size > 0 %}
<div class="timeline__block timeline__block--upcoming">
  <div class="timeline__year">Upcoming</div>
  <ul class="entry-list entry-list--news">
  {% assign upcoming_asc = upcoming | reverse %}
  {% for n in upcoming_asc %}
    <li>
      <span class="entry-date">{% if n.label %}{{ n.label }}{% else %}{{ n.date | date: "%-d %b" }}{% endif %}</span>
      <span class="entry-body">{{ n.text }} <span class="badge badge--upcoming">Upcoming</span></span>
    </li>
  {% endfor %}
  </ul>
</div>
{% endif %}

{% comment %} ── Past items, grouped by year ── {% endcomment %}
{% assign years = news_sorted | group_by_exp: "n", "n.date | date: '%Y'" %}
{% assign opened_older = false %}

{% for y in years %}
  {% assign y_num = y.name | plus: 0 %}

  {% assign past_items = "" | split: "" %}
  {% for n in y.items %}
    {% assign n_s = n.date | date: "%s" | plus: 0 %}
    {% if n_s <= now_s %}{% assign past_items = past_items | push: n %}{% endif %}
  {% endfor %}
  {% if past_items.size == 0 %}{% continue %}{% endif %}

  {% if y_num < last_year and opened_older == false %}
    {% assign opened_older = true %}
<details class="timeline__older">
  <summary>Show older news and updates…</summary>
  {% endif %}

<div class="timeline__block">
  <div class="timeline__year">{{ y.name }}</div>
  <ul class="entry-list entry-list--news">
  {% for n in past_items %}
    {% assign n_s = n.date | date: "%s" | plus: 0 %}
    {% assign age = now_s | minus: n_s %}
    <li>
      <span class="entry-date">{% if n.label %}{{ n.label }}{% else %}{{ n.date | date: "%-d %b" }}{% endif %}</span>
      <span class="entry-body">{{ n.text }}{% if age < new_s %} <span class="badge badge--new">New</span>{% endif %}</span>
    </li>
  {% endfor %}
  </ul>
</div>
{% endfor %}

{% if opened_older %}
</details>
{% endif %}

</div>

## Research framework

<div class="arch" role="img" aria-label="Research framework: component models and physics-based layers feed system-level decisions, supported by an AI layer built on ML tools, together forming multi-physics, AI-supported system-level energy modeling.">

  <div class="arch__row">

    <div class="arch__branch">
      <div class="arch__box arch__box--physics">
        <h4>Components</h4>
        <div class="arch__grid2">
          <div class="arch__item"><img src="{{ icons }}electrolyzer.png" alt="" loading="lazy"><span>Electrolyzer<br>(Power-to-H₂)</span></div>
          <div class="arch__item"><img src="{{ icons }}battery.svg" alt="" loading="lazy"><span>Li-ion battery</span></div>
          <div class="arch__item"><img src="{{ icons }}transformer.png" alt="" loading="lazy"><span>Power transformer</span></div>
          <div class="arch__item"><img src="{{ icons }}cables.png" alt="" loading="lazy"><span>Cables</span></div>
        </div>
        <div class="arch__etc">… etc.</div>
      </div>

      <div class="arch__arrow" aria-hidden="true">➔</div>

      <div class="arch__box arch__box--physics">
        <h4>Physics-based layer</h4>
        <div class="arch__stack">
          <div class="arch__item"><img src="{{ icons }}electrical.png" alt="" loading="lazy"><span>Electrical</span></div>
          <div class="arch__item"><img src="{{ icons }}chemical.png" alt="" loading="lazy"><span>Chemical</span></div>
          <div class="arch__item"><img src="{{ icons }}thermal.png" alt="" loading="lazy"><span>Thermal</span></div>
        </div>
        <div class="arch__etc">… etc.</div>
      </div>
    </div>

    <div class="arch__arrow" aria-hidden="true">➔</div>

    <div class="arch__box arch__box--center">
      <h4>System decisions / policy</h4>
      <div class="arch__stack">
        <div class="arch__item arch__item--lg"><img src="{{ icons }}scheduling.png" alt="" loading="lazy"><span>Multi-energy hub<br>scheduling</span></div>
      </div>
      <div class="arch__etc">… etc.</div>
    </div>

    <div class="arch__arrow" aria-hidden="true">⬅</div>

    <div class="arch__branch">
      <div class="arch__box arch__box--ai">
        <h4>AI-support layer</h4>
        <div class="arch__stack">
          <div class="arch__item"><img src="{{ icons }}speedup.png" alt="" loading="lazy"><span>Computational<br>speed-up</span></div>
          <div class="arch__item"><img src="{{ icons }}forecast.png" alt="" loading="lazy"><span>Forecasting and<br>scenario generation</span></div>
        </div>
        <div class="arch__etc">… etc.</div>
      </div>

      <div class="arch__arrow" aria-hidden="true">⬅</div>

      <div class="arch__box arch__box--ai">
        <h4>ML/AI tools</h4>
        <div class="arch__stack">
          <div class="arch__item arch__item--lg"><img src="{{ icons }}neura-net.png" alt="" loading="lazy"><span>Neural networks embedded<br>in optimization models</span></div>
          <div class="arch__item arch__item--lg"><img src="{{ icons }}GNN.png" alt="" loading="lazy"><span>Multi-layer graph<br>neural networks</span></div>
        </div>
        <div class="arch__etc">… etc.</div>
      </div>
    </div>

  </div>

  <div class="arch__arrow arch__arrow--down" aria-hidden="true">⇩</div>

  <div class="arch__final">Multi-physics, AI-supported system-level energy modeling</div>

</div>

## Selected open-access papers

<div class="papers">
{% for p in page.papers %}
  <div class="paper">
    <iframe id="pdf-{{ p.id }}" class="paper__frame"
            src="{{ p.preview | relative_url }}#page=1&amp;view=FitH"
            title="Preview: {{ p.title }}"
            loading="lazy" allowfullscreen></iframe>
    <p class="paper__title">
      <a href="{{ p.pdf | relative_url }}" target="_blank" rel="noopener noreferrer">{{ p.title }}</a>
    </p>
    <div class="paper__actions">
      <button type="button" class="paper__btn paper__btn--fs"
              data-target="pdf-{{ p.id }}" data-fallback="{{ p.preview | relative_url }}">⛶ Full screen</button>
      <a class="paper__btn" href="{{ p.pdf | relative_url }}" target="_blank" rel="noopener noreferrer">Open PDF</a>
    </div>
  </div>
{% endfor %}
</div>

<script>
  document.querySelectorAll(".paper__btn--fs").forEach(function (btn) {
    btn.addEventListener("click", function () {
      var el = document.getElementById(btn.dataset.target);
      var req = el && (el.requestFullscreen || el.webkitRequestFullscreen || el.msRequestFullscreen);
      if (req) {
        req.call(el);
      } else {
        /* e.g. iOS Safari: no element fullscreen, open the PDF instead */
        window.open(btn.dataset.fallback, "_blank", "noopener");
      }
    });
  });
</script>

## Open-source software

<div class="software">
{% for s in page.software %}
  <div class="software__card">
    <h3 class="software__name">{{ s.name }}</h3>
    <p class="software__desc">{{ s.description }}</p>
    <code class="software__install">{{ s.install }}</code>
    <div class="paper__actions">
      <a class="paper__btn" href="{{ s.github }}" target="_blank" rel="noopener noreferrer">GitHub</a>
      <a class="paper__btn" href="{{ s.pypi }}" target="_blank" rel="noopener noreferrer">PyPI</a>
    </div>
  </div>
{% endfor %}
</div>