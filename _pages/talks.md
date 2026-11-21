---
layout: archive
title: "Events and talks"
permalink: /talks/
author_profile: true
---

{% comment %} Content lives in _data/talks.yml (shared with the location map). {% endcomment %}

<p class="section-intro">Events I have organized and talks I have given. Click a <i class="fas fa-location-dot" aria-hidden="true"></i> pin, or scroll down to the <a href="#map">map of talks, visits and career</a>.</p>

## Organized events

<p class="section-intro">Abstracts and speaker bios of the cross-sectoral and industry talks are on the <a href="{{ '/talks/seminars/' | relative_url }}">seminar series page</a>.</p>

{% include event-timeline.html items=site.data.talks.organized prefix="E" %}

## Talks

{% include event-timeline.html items=site.data.talks.talks prefix="K" %}

<h2 id="map">Map of talks, visits and career</h2>

<p class="section-intro">Where I have studied, worked, visited research groups and given talks. Click a marker for details.</p>

{% include site-map.html on_events=true %}
