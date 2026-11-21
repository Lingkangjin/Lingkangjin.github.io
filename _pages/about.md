---
permalink: /
title: "Lingkang Jin, Ph.D."
author_profile: true
redirect_from:
  - /about/
  - /about.html

# Items dated after the site build appear under "Upcoming";
# items from the last `news_new_days` days get a "New" badge.
# Only the `news_shown` most recent past items are listed; the rest fold
# under "Show older news".
news_new_days: 30
news_shown: 5

# `date` (YYYY-MM-DD) drives sorting and grouping.
# Talks and organized events are NOT listed here: give their entry in
# _data/talks.yml a `news:` line and it appears in this list automatically.
# `label` is optional and replaces the displayed date (for ranges).
news:
  - date: 2026-10-09
    text: "<a href='/portfolio/'>ORKEST</a> Q3 2026 demo event on project results, Stedin, Utrecht"
  - date: 2026-10-05
    text: "Research-career panelist, MSc professional development course, TU/e"
  - date: 2026-07-03
    text: "<a href='/portfolio/'>ORKEST</a> Q2 2026 demo event on project results, Stedin, Utrecht"
  - date: 2026-06-15
    text: "Best-paper award finalist (3-minute pitch), <a href='https://www.tue.nl/en/our-university/calendar-and-events/15-06-2026-pda-best-paper-award-2026' target='_blank' rel='noopener noreferrer'>TU/e Postdoc Association</a>"
  - date: 2026-06-10
    text: "Presenter, EuroTech stand at the <a href='https://interactive.eusew.eu/platform/eusew-2026/fair' target='_blank' rel='noopener noreferrer'>EUSEW 2026 Energy Fair</a>"
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

  /* Widen the content column on this page.
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
    align-items: center;
    justify-content: center;
    gap: 10px;
  }
  .arch__row { width: 100%; }

  .arch__box {
    display: flex;
    flex-direction: column;
    padding: 8px 10px;
    border: 1px solid var(--brand-border);
    border-radius: 6px;
    text-align: center;
    box-shadow: 0 1px 3px rgba(31, 41, 55, 0.06);
    color: #1F2937;
  }
  .arch__box h4 { margin: 0 0 6px; font-size: 0.78rem; line-height: 1.2; color: var(--brand-main); }
  .arch__box--physics { background: var(--brand-tint); }
  .arch__box--ai      { background: var(--brand-pale); }
  .arch__box--center  { background: #fff; border: 2px solid var(--brand-light); width: 160px; justify-content: center; }

  .arch__final {
    width: 80%;
    padding: 9px 20px;
    background: var(--brand-main);
    border-radius: 6px;
    font-size: 0.9rem;
    font-weight: bold;
    text-align: center;
    color: #fff;
    box-shadow: 0 2px 6px var(--brand-shadow);
  }

  .arch__arrow {
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.4rem;
    font-weight: bold;
    color: var(--ac-muted);
  }
  .arch__arrow--down { font-size: 1.7rem; margin: -10px 0; line-height: 1; }

  .arch__grid2 { display: grid; grid-template-columns: 1fr 1fr; gap: 8px 10px; }
  .arch__stack { display: flex; flex-direction: column; align-items: center; justify-content: center; gap: 6px; }

  .arch__item {
    display: flex;
    flex-direction: column;
    align-items: center;
    font-size: 0.68rem;
    font-weight: bold;
    line-height: 1.15;
    transition: transform 0.2s ease;
  }
  .arch__item:hover { transform: scale(1.05); }
  .arch__item img {
    width: 30px;
    height: 30px;
    object-fit: contain;
    margin-bottom: 3px;
  }
  .arch__item--lg img { width: 48px; height: 48px; }

  .arch__etc { padding-top: 4px; text-align: right; font-size: 0.65rem; font-weight: bold; color: #6B7280; }

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

  /* ───────── Latest journal articles: graphical abstract + abstract ───────── */
  .latest { display: flex; flex-direction: column; gap: 1.1rem; }
  .latest__item {
    display: grid;
    grid-template-columns: minmax(0, 1fr) minmax(0, 2.4fr);
    gap: 1.1rem;
    align-items: start;
    padding-bottom: 1.1rem;
    border-bottom: 1px solid var(--ac-line);
  }
  .latest__item:last-child { border-bottom: none; padding-bottom: 0; }
  .latest__fig {
    width: 100%;
    height: auto;
    background: #fff;
    border: 1px solid #d0d0d0;
    border-radius: 2px;
  }
  .latest__title { margin: 0 0 0.25rem; font-size: 0.88rem; line-height: 1.3; }
  .latest__title a { text-decoration: none; }
  .latest__title a:hover { text-decoration: underline; }
  .latest__meta { margin: 0 0 0.4rem !important; font-size: 0.72rem !important; line-height: 1.35; color: var(--ac-muted); }
  .latest__abstract {
    margin: 0 !important;
    font-size: 0.76rem !important;
    line-height: 1.45;
    display: -webkit-box;
    -webkit-line-clamp: 5;
    -webkit-box-orient: vertical;
    overflow: hidden;
  }
  .latest__abstract.is-open { -webkit-line-clamp: unset; display: block; }
  .latest__more {
    margin-top: 0.35rem;
    padding: 0;
    border: none;
    background: none;
    color: var(--ac-accent);
    font-size: 0.8em;
    font-weight: 700;
    cursor: pointer;
  }
  .latest__all { margin-top: 0.5rem; font-size: 0.9em; }

  @media (max-width: 760px) {
    .latest__item { grid-template-columns: 1fr; }
    .latest__fig { max-width: 320px; }
  }

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
    border-radius: 14px 4px 14px 4px;
  }
  .software__name { margin: 0 0 0.4rem; font-size: 1rem; font-family: monospace; color: var(--ac-accent); }
  .software__desc { margin: 0 0 0.7rem; font-size: 0.85em; line-height: 1.4; }
  .software__install {
    margin: 0 0 0.8rem;
    padding: 0.35rem 0.6rem;
    border-radius: 4px;
    background: var(--ac-panel);
    font-size: 0.8em;
    overflow-x: auto;
  }
  .software__actions { display: flex; gap: 0.5rem; margin-top: auto; }
  .software__btn {
    padding: 0.35rem 0.8rem;
    border-radius: 4px;
    background: var(--ac-btn-bg);
    color: #fff !important;
    font-size: 0.75em;
    font-weight: 700;
    text-decoration: none !important;
  }
  .software__btn:hover { background: var(--ac-btn-bg-hover); }
</style>

{% assign now_s     = site.time | date: "%s" | plus: 0 %}
{% assign this_year = site.time | date: "%Y" | plus: 0 %}
{% assign last_year = this_year | minus: 1 %}
{% assign new_s     = page.news_new_days | default: 30 | times: 86400 %}
{% assign icons     = "/images/icons/" | relative_url %}

<p class="tagline">Energy systems researcher · Optimization modeler · Data scientist</p>

<p class="hero-lead">Bringing the physics of energy assets into fast, AI-supported optimization for more accurate grid decisions.</p>

<div class="hero-actions">
  <a class="btn hero-btn" href="{{ '/publications/' | relative_url }}"><i class="fas fa-book-open" aria-hidden="true"></i> Publications</a>
  <a class="btn hero-btn" href="{{ '/files/CV_Jin.pdf' | relative_url }}" download><i class="fas fa-file-arrow-down" aria-hidden="true"></i> Download CV</a>
  <a class="btn btn--inverse hero-btn" href="mailto:{{ site.author.email }}"><i class="fas fa-envelope" aria-hidden="true"></i> Contact</a>
</div>

Lingkang is a postdoctoral researcher in the Electrical Energy Systems group, Department of Electrical Engineering, Eindhoven University of Technology (TU/e), the Netherlands, and a member of EIRES.

His research brings **detailed multi-physics models of energy assets into system-level decision making**, using mathematical programming supported by AI and machine learning to cut computational cost and improve scenario generation. He works closely with grid operators on congestion management and teaches in the MSc course *5LEP0 Electricity Markets: Modeling and Optimization*.

## News and updates

{% comment %}
  News = the list in this page's front matter + every entry in _data/talks.yml
  that has a `news:` line, so talks and organized events are entered only once.
  The 5 most recent past items are shown; the rest fold under "Show older news".
{% endcomment %}
{% assign event_news = site.data.talks.organized | concat: site.data.talks.talks | where_exp: "t", "t.news" %}
{% assign news_sorted = page.news | concat: event_news | sort: "date" | reverse %}
{% assign news_shown = page.news_shown | default: 5 %}

{% assign upcoming = "" | split: "" %}
{% assign past = "" | split: "" %}
{% for n in news_sorted %}
  {% assign n_s = n.date | date: "%s" | plus: 0 %}
  {% if n_s > now_s %}{% assign upcoming = upcoming | push: n %}{% else %}{% assign past = past | push: n %}{% endif %}
{% endfor %}
{% assign recent = past | slice: 0, news_shown %}
{% assign older_count = past.size | minus: news_shown %}

<div class="timeline">

{% if upcoming.size > 0 %}
<div class="timeline__block timeline__block--upcoming">
  <div class="timeline__year">Upcoming</div>
  <ul class="entry-list entry-list--news">
  {% assign upcoming_asc = upcoming | reverse %}
  {% for n in upcoming_asc %}
    {% if n.news %}{% assign n_text = n.news %}{% assign n_label = n.news_label %}{% else %}{% assign n_text = n.text %}{% assign n_label = n.label %}{% endif %}
    <li>
      <span class="entry-date">{% if n_label %}{{ n_label }}{% else %}{{ n.date | date: "%-d %b" }}{% endif %}</span>
      <span class="entry-body">{{ n_text }} <span class="badge badge--upcoming">Upcoming</span></span>
    </li>
  {% endfor %}
  </ul>
</div>
{% endif %}

{% include news-list.html items=recent new_s=new_s %}

{% if older_count > 0 %}
{% assign older = past | slice: news_shown, older_count %}
<details class="timeline__older">
  <summary>Show older news ({{ older_count }} more)…</summary>
  {% include news-list.html items=older new_s=new_s %}
</details>
{% endif %}

</div>

<p class="news-more"><a href="{{ '/talks/' | relative_url }}">All events and talks &rarr;</a> · <a href="{{ '/cv/' | relative_url }}">Full CV &rarr;</a></p>

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

## Latest journal articles

{% comment %}
  The 3 newest journal articles that have an `abstract` in _pages/publications.md.
  The figure on the left is a graphical abstract (`figure:` field, images/papers/).
{% endcomment %}
{% assign pubs_page = site.pages | where: "permalink", "/publications/" | first %}
{% assign latest = pubs_page.journal_articles | where_exp: "a", "a.abstract" %}

<div class="latest">
{% for a in latest limit: 3 %}
  <article class="latest__item">
    {% if a.figure %}<img class="latest__fig" src="{{ a.figure | relative_url }}" alt="Graphical abstract: {{ a.title }}" loading="lazy">{% endif %}
    <div class="latest__body">
      <h3 class="latest__title"><a href="{{ a.link_url }}" target="_blank" rel="noopener noreferrer">{{ a.title }}</a></h3>
      <p class="latest__meta">{{ a.authors }} · <i>{{ a.venue | split: "," | first }}</i>, {{ a.year }}
        {%- if a.quartile %} <span class="badge badge--{{ a.quartile | downcase }}">{{ a.quartile }}</span>{% endif %}
        {%- if a.status %} <span class="badge badge--upcoming">{{ a.status }}</span>{% endif %}</p>
      <p class="latest__abstract">{{ a.abstract }}</p>
      <button type="button" class="latest__more" aria-expanded="false">Read full abstract</button>
    </div>
  </article>
{% endfor %}
</div>

<p class="latest__all"><a href="{{ '/publications/' | relative_url }}">All publications &rarr;</a></p>

<script>
  document.querySelectorAll(".latest__more").forEach(function (btn) {
    var abs = btn.previousElementSibling;
    /* hide the toggle when the abstract already fits */
    if (abs.scrollHeight <= abs.clientHeight + 2) { btn.hidden = true; return; }
    btn.addEventListener("click", function () {
      var open = abs.classList.toggle("is-open");
      btn.textContent = open ? "Show less" : "Read full abstract";
      btn.setAttribute("aria-expanded", open ? "true" : "false");
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
    <div class="software__actions">
      <a class="software__btn" href="{{ s.github }}" target="_blank" rel="noopener noreferrer">GitHub</a>
      <a class="software__btn" href="{{ s.pypi }}" target="_blank" rel="noopener noreferrer">PyPI</a>
    </div>
  </div>
{% endfor %}
</div>