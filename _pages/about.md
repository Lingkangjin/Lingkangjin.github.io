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
    text: "Co-organizing the 2026 annual EES research group meeting, Eindhoven, the Netherlands"
  - date: 2026-10-28
    text: "Chairing the research meeting on bilevel optimization with Dr. Yasmine Beck, TU/e, Eindhoven"
  - date: 2026-10-14
    text: "Chairing the research meeting with the Stedin asset management team, TU/e, Eindhoven"
  - date: 2026-10-09
    text: "<a href='/portfolio/'>ORKEST</a> Q3 2026 demo event for results dissemination, Stedin office, Utrecht"
  - date: 2026-10-05
    text: "Research-career panelist in the MSc professional development course, TU/e, Eindhoven"
  - date: 2026-09-02
    label: "02–04 September"
    text: "Speaker at the <a href='https://www.nordicenergyinformatics.academy/eia-nordic-conference-2026' target='_blank' rel='noopener noreferrer'>EIA Nordic Energy Informatics Conference 2026</a>, Reykjavik, Iceland"
  - date: 2026-07-03
    text: "ORKEST Q2 2026 demo event for results dissemination, Stedin office, Utrecht"
  - date: 2026-06-15
    text: "Best-paper award finalist with a 3-minute pitch at the <a href='https://www.tue.nl/en/our-university/calendar-and-events/15-06-2026-pda-best-paper-award-2026' target='_blank' rel='noopener noreferrer'>TU/e Postdoc Association</a>"
  - date: 2026-06-10
    text: "Presenter at the EuroTech stand (no. 18) at the <a href='https://interactive.eusew.eu/platform/eusew-2026/fair' target='_blank' rel='noopener noreferrer'>EUSEW 2026 Energy Fair</a>"
  - date: 2026-05-22
    text: "Invited talk on surrogate modeling in power systems at the <a href='https://www.tue.nl/en/research/research-groups/industrial-engineering/information-systems-ieis/' target='_blank' rel='noopener noreferrer'>Information Systems group (IE&amp;IS)</a>, TU/e, hosted by Dr. <a href='https://www.tue.nl/en/research/researchers/laurens-bliek' target='_blank' rel='noopener noreferrer'>Laurens Bliek</a>"
  - date: 2026-04-26
    label: "26 April – 10 May"
    text: "EuroTech research visit at <a href='https://wind.dtu.dk/' target='_blank' rel='noopener noreferrer'>DTU Wind and Energy Systems</a>, Denmark, hosted by Dr. <a href='https://orbit.dtu.dk/en/persons/haris-ziras/' target='_blank' rel='noopener noreferrer'>Haris Ziras</a>"
  - date: 2026-04-01
    text: "Joined the Erasmus+ Blueprint project <a href='https://sgskill.eddie-skills.eu/' target='_blank' rel='noopener noreferrer'>SG-SKILL</a> as TU/e representative (WP2 and WP3)"
  - date: 2025-06-15
    text: "Joined the <a href='https://projecten.topsectorenergie.nl/projecten/orkest-optimal-integration-of-network-flexibiilty-and-asset-intelligence-to-increase-large-scale-integration-of-res-while-maintaining-reliability-37711' target='_blank' rel='noopener noreferrer'>ORKEST</a> project as Result 4 leader"
  - date: 2024-03-30
    text: "PhD defense, thesis: <a href='https://tesidottorato.depositolegale.it/handle/20.500.14242/307237' target='_blank' rel='noopener noreferrer'><em>Energy storage in multi-energy carrier communities: Li-ion batteries and hydrogen multi-physical details for integration into the planning stage</em></a>"
  - date: 2024-01-15
    text: "Started as postdoctoral researcher at TU/e, leading TU/e's research in the NO-GIZMOS project"
  - date: 2023-03-01
    label: "March – May"
    text: "Visiting PhD at the TU/e Electrical Energy Systems group, supervised by Dr. <a href='https://www.tue.nl/en/research/researchers/christina-papadimitriou' target='_blank' rel='noopener noreferrer'>Christina Papadimitriou</a>"
  - date: 2022-03-01
    label: "March – September"
    text: "Visiting PhD at DTU Energy (CMT section), Technical University of Denmark, supervised by Prof. <a href='https://orbit.dtu.dk/en/persons/henrik-lund-frandsen/' target='_blank' rel='noopener noreferrer'>Henrik Lund Frandsen</a>, in collaboration with <a href='https://orbit.dtu.dk/en/persons/rafael-nogueira-nakashima/' target='_blank' rel='noopener noreferrer'>Rafael Nogueira Nakashima</a>"
  - date: 2020-10-01
    label: "October"
    text: "Started PhD in Industrial Engineering (Energy Systems) at Università Politecnica delle Marche, supervised by Prof. <a href='https://www.univpm.it/Entra/Engine/RAServePG.php/P/320710010421/idsel/590/docname/GABRIELE%20COMODI' target='_blank' rel='noopener noreferrer'>Gabriele Comodi</a>"

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
---

<style>
  /* ───────── Shared tokens ───────── */
  .home-scope, .news, .arch, .papers {
    --accent: #2563eb;
    --ink: #1e293b;
    --muted: #64748b;
    --line: #e2e8f0;
  }

  /* Widen the content column on this page so the paper previews fit.
     Remove these two rules to keep the theme's default width. */
  .page { padding-right: 0 !important; }
  .page__inner-wrap { max-width: 100% !important; }

  /* ───────── Intro ───────── */
  .tagline {
    font-weight: 700;
    color: var(--accent, #2563eb);
    letter-spacing: 0.01em;
    margin-bottom: 0.4rem;
  }

  /* ───────── News timeline ───────── */
  .news {
    position: relative;
    padding: 0.6rem 0 0.6rem 1.5rem;
    margin: 1.2rem 0 2rem;
    border-left: 2px solid var(--line);
  }
  .news__block { position: relative; margin-bottom: 1.8rem; }
  .news__block:last-child { margin-bottom: 0; }
  .news__block::before {
    content: "";
    position: absolute;
    left: calc(-1.5rem - 7px);
    top: 4px;
    width: 12px;
    height: 12px;
    border-radius: 50%;
    background: var(--accent);
    border: 3px solid #fff;
    box-shadow: 0 0 0 1px #cbd5e1;
  }
  .news__block--upcoming::before { background: #f59e0b; }
  .news__heading {
    font-size: 1.15rem;
    font-weight: 700;
    color: var(--ink);
    margin: 0 0 0.7rem;
    line-height: 1;
  }
  .news__list { list-style: none; margin: 0; padding: 0; }
  .news__list li { margin-bottom: 0.6rem; line-height: 1.45; font-size: 0.92rem; }
  .news__date { font-weight: 700; }

  .badge {
    display: inline-block;
    font-size: 0.65rem;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 0.04em;
    padding: 0.1rem 0.45rem;
    border-radius: 999px;
    margin-right: 0.35rem;
    vertical-align: 0.1em;
  }
  .badge--new { background: #dcfce7; color: #166534; }
  .badge--upcoming { background: #fef3c7; color: #92400e; }

  .news__older { margin-top: 1.4rem; }
  .news__older summary {
    cursor: pointer;
    font-weight: 600;
    color: var(--accent);
    margin-bottom: 1.4rem;
  }
  .news__older summary:hover { text-decoration: underline; }

  /* ───────── Research framework diagram ───────── */
  .arch {
    max-width: 1000px;
    margin: 2rem auto;
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 15px;
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
    padding: 15px;
    border: 1px solid #333;
    border-radius: 4px;
    text-align: center;
    box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.05);
    color: #111;
  }
  .arch__box h4 { margin: 0 0 15px; font-size: 0.95rem; }
  .arch__box--physics { background: #f3dfdf; }
  .arch__box--ai      { background: #e4eff5; }
  .arch__box--center  { background: #fbeaba; width: 200px; justify-content: center; }

  .arch__final {
    width: 80%;
    padding: 15px 30px;
    background: #fcd55c;
    border: 2px solid #333;
    border-radius: 4px;
    font-size: 1.1rem;
    font-weight: bold;
    text-align: center;
    color: #111;
    box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
  }

  .arch__arrow {
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 2rem;
    font-weight: bold;
    color: #555;
  }
  .arch__arrow--down { font-size: 3rem; margin: -10px 0; }

  .arch__grid2 { display: grid; grid-template-columns: 1fr 1fr; gap: 15px; }
  .arch__stack { display: flex; flex-direction: column; align-items: center; justify-content: center; gap: 15px; }

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

  .arch__etc { margin-top: auto; padding-top: 15px; text-align: right; font-size: 0.9em; font-weight: bold; }

  @media (max-width: 950px) {
    .arch__row, .arch__branch { flex-direction: column; align-items: center; width: 100%; }
    .arch__arrow { transform: rotate(90deg); padding: 10px 0; }
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
    border: 1px solid #ccc;
    background: #fff;
    box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
  }
  .paper__actions { display: flex; gap: 0.5rem; justify-content: center; margin-top: 0.6rem; }
  .paper__btn {
    padding: 0.45rem 0.8rem;
    border: none;
    border-radius: 4px;
    background: #494e52;
    color: #fff !important;
    font-size: 0.8em;
    font-weight: bold;
    text-decoration: none !important;
    cursor: pointer;
    transition: background-color 0.2s ease;
  }
  .paper__btn:hover { background: #2a2d2f; }
  .paper__title { font-size: 0.9em; line-height: 1.3; margin: 0.7rem 0 0; font-weight: bold; }
  .paper__title a { text-decoration: none; }

  /* Mobile browsers rarely render PDFs inside iframes: show the buttons only */
  @media (max-width: 768px), (hover: none) {
    .paper__frame, .paper__btn--fs { display: none; }
    .paper { text-align: left; padding: 0.8rem; border: 1px solid #e5e7eb; border-radius: 6px; }
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

## News and updates 📈

{% assign news_sorted = page.news | sort: "date" | reverse %}

<div class="news">

{% comment %} ── Upcoming (oldest first, so the next event is on top) ── {% endcomment %}
{% assign upcoming = "" | split: "" %}
{% for n in news_sorted %}
  {% assign n_s = n.date | date: "%s" | plus: 0 %}
  {% if n_s > now_s %}{% assign upcoming = upcoming | push: n %}{% endif %}
{% endfor %}

{% if upcoming.size > 0 %}
<div class="news__block news__block--upcoming">
  <div class="news__heading">Upcoming</div>
  <ul class="news__list">
  {% assign upcoming_asc = upcoming | reverse %}
  {% for n in upcoming_asc %}
    <li>
      <span class="badge badge--upcoming">Upcoming</span>
      <span class="news__date">{% if n.label %}{{ n.label }}{% else %}{{ n.date | date: "%-d %B" }}{% endif %}:</span>
      {{ n.text }}
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
<details class="news__older">
  <summary>Show older news and updates…</summary>
  {% endif %}

<div class="news__block">
  <div class="news__heading">{{ y.name }}</div>
  <ul class="news__list">
  {% for n in past_items %}
    {% assign n_s = n.date | date: "%s" | plus: 0 %}
    {% assign age = now_s | minus: n_s %}
    <li>
      {% if age < new_s %}<span class="badge badge--new">New</span>{% endif %}
      <span class="news__date">{% if n.label %}{{ n.label }}{% else %}{{ n.date | date: "%-d %B" }}{% endif %}:</span>
      {{ n.text }}
    </li>
  {% endfor %}
  </ul>
</div>
{% endfor %}

{% if opened_older %}
</details>
{% endif %}

</div>

## Research framework 🧩

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
        // e.g. iOS Safari: no element fullscreen, open the PDF instead
        window.open(btn.dataset.fallback, "_blank", "noopener");
      }
    });
  });
</script>