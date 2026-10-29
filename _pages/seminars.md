---
layout: archive
title: "Seminar series"
permalink: /talks/seminars/
author_profile: true
---

{% comment %} Content lives in the `details` field of _data/talks.yml (organized events). {% endcomment %}

<style>
  .seminar {
    margin: 0 0 1.5rem;
    padding: 1rem 1.25rem;
    border: 1px solid var(--ac-line);
    border-radius: 6px;
    background: var(--ac-panel);
    scroll-margin-top: 5rem;
  }
  .seminar:target { border-color: var(--ac-accent); }
  .seminar__meta { margin: 0 0 0.3rem; color: var(--ac-muted); font-size: 0.85em; }
  .seminar__title { margin: 0 0 0.8rem; font-size: 1.1rem; line-height: 1.35; }
  .seminar h4 { margin: 1rem 0 0.4rem; font-size: 0.9rem; text-transform: uppercase; letter-spacing: 0.04em; color: var(--ac-muted); }
  .seminar p { font-size: 0.9em; line-height: 1.5; margin: 0 0 0.5rem; }

  .speaker { display: flex; gap: 0.9rem; align-items: flex-start; margin-bottom: 0.9rem; }
  .speaker__photo { width: 72px; height: 72px; flex: none; border-radius: 50%; object-fit: cover; border: 1px solid var(--ac-line); }
  .speaker__name { margin: 0; font-weight: 700; font-size: 0.95em; }
  .speaker__aff { margin: 0 0 0.3rem; color: var(--ac-muted); font-size: 0.85em; }
</style>

{%- assign now_s = site.time | date: "%s" | plus: 0 -%}

<p class="section-intro">Cross-sectoral and industry perspective talks I host in the Electrical Energy Systems group at TU/e: abstracts and speaker bios. Back to <a href="{{ '/talks/' | relative_url }}">all events and talks</a>.</p>

{% for t in site.data.talks.organized %}
{%- unless t.details -%}{%- continue -%}{%- endunless -%}
{%- assign d = t.details -%}
{%- assign t_s = t.date | date: "%s" | plus: 0 %}
<section class="seminar" id="{{ d.id }}">
  <p class="seminar__meta">
    {{ t.date | date: "%-d %B %Y" }} · {{ t.kind }}
    {%- if t.note %} · {{ t.note }}{% endif %}
    {%- if t.place and site.data.places[t.place] %} · {{ site.data.places[t.place].name }}{% endif %}
    {% if t_s > now_s %}<span class="badge badge--upcoming">Upcoming</span>{% endif %}
  </p>
  <h3 class="seminar__title">{{ t.title }}</h3>

  {% if d.abstract and d.abstract != "" %}
  <h4>Abstract</h4>
  <p>{{ d.abstract }}</p>
  {% endif %}

  <h4>Speaker{% if d.speakers.size > 1 %}s{% endif %}</h4>
  {% for s in d.speakers %}
  <div class="speaker">
    {% if s.photo and s.photo != "" %}<img class="speaker__photo" src="{{ s.photo | relative_url }}" alt="{{ s.name }}" loading="lazy">{% endif %}
    <div>
      <p class="speaker__name">{% if s.url %}<a href="{{ s.url }}" target="_blank" rel="noopener noreferrer">{{ s.name }}</a>{% else %}{{ s.name }}{% endif %}</p>
      {% if s.affiliation %}<p class="speaker__aff">{{ s.affiliation }}</p>{% endif %}
      {% if s.bio and s.bio != "" %}<p>{{ s.bio }}</p>{% endif %}
    </div>
  </div>
  {% endfor %}
</section>
{% endfor %}
