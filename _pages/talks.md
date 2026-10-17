---
layout: archive
title: "Events and talks"
permalink: /talks/
author_profile: true
---

{% comment %} Content lives in _data/talks.yml (shared with the location map). {% endcomment %}

<p class="section-intro">Events I have organized and talks I have given. See all locations on the <a href="{{ '/map/' | relative_url }}">map of talks, visits and career</a>.</p>

## Organized events

{% include event-timeline.html items=site.data.talks.organized prefix="E" %}

## Talks

{% include event-timeline.html items=site.data.talks.talks prefix="K" %}
