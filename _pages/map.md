---
layout: archive
title: "Map"
permalink: /map/
author_profile: true
---

{% comment %}
  Markers are built from _data/talks.yml (talks and organized events) and
  _data/map.yml (career and research visits); coordinates come from
  _data/places.yml. Add a place there once and reference it by key.
{% endcomment %}

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.9.4/leaflet.min.css">

<p class="section-intro">Where I have studied, worked, visited research groups and given talks. Click a marker for details.</p>

<div class="map-filters" role="group" aria-label="Filter map entries">
  <label><input type="checkbox" value="career" checked> <span class="map-swatch map-swatch--career"></span> Study and work</label>
  <label><input type="checkbox" value="visit" checked> <span class="map-swatch map-swatch--visit"></span> Research visits</label>
  <label><input type="checkbox" value="talk" checked> <span class="map-swatch map-swatch--talk"></span> Talks and events</label>
</div>

<div id="site-map" class="site-map" role="region" aria-label="Map of locations"></div>

<ul id="place-list" class="place-list"></ul>

<noscript>
  <p>The map needs JavaScript. The same information is on the <a href="{{ '/talks/' | relative_url }}">events page</a> and in the <a href="{{ '/cv/' | relative_url }}">CV</a>.</p>
</noscript>

<script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.9.4/leaflet.min.js"></script>
<script>
(function () {
  var PLACES = {{ site.data.places | jsonify }};
  var ENTRIES = [
    {%- for t in site.data.talks.talks %}
    { "place": {{ t.place | jsonify }}, "type": "talk", "when": {{ t.date | date: "%b %Y" | jsonify }}, "text": {{ t.title | jsonify }}, "sub": {{ t.venue | strip_html | jsonify }} },
    {%- endfor %}
    {%- for t in site.data.talks.organized %}
    { "place": {{ t.place | jsonify }}, "type": "talk", "when": {{ t.date | date: "%b %Y" | jsonify }}, "text": {{ t.title | jsonify }}, "sub": {{ t.kind | append: " (organizer)" | jsonify }} },
    {%- endfor %}
    {%- for m in site.data.map %}
    { "place": {{ m.place | jsonify }}, "type": {{ m.type | jsonify }}, "when": {{ m.period | jsonify }}, "text": {{ m.text | jsonify }}, "sub": "" },
    {%- endfor %}
  ];

  var TYPES = {
    career: { label: "Study and work" },
    visit:  { label: "Research visits" },
    talk:   { label: "Talks and events" }
  };
  var ORDER = ["career", "visit", "talk"]; /* marker color: first type present wins */

  function cssVar(name) {
    return getComputedStyle(document.documentElement).getPropertyValue(name).trim();
  }
  function isDark() {
    return document.documentElement.getAttribute("data-theme") === "dark";
  }
  function esc(s) {
    var d = document.createElement("div");
    d.textContent = s || "";
    return d.innerHTML;
  }

  /* Group entries by place */
  var byPlace = {};
  ENTRIES.forEach(function (e) {
    if (!e.place || !PLACES[e.place]) return;
    (byPlace[e.place] = byPlace[e.place] || []).push(e);
  });

  var map = L.map("site-map", { scrollWheelZoom: false, worldCopyJump: true });
  /* Open, key-free tile servers; the next one is tried if tiles keep failing */
  var PROVIDERS = [
    { url: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
      attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors' },
    { url: "https://server.arcgisonline.com/ArcGIS/rest/services/World_Street_Map/MapServer/tile/{z}/{y}/{x}",
      attribution: "Tiles &copy; Esri &mdash; Esri, HERE, Garmin, &copy; OpenStreetMap contributors" }
  ];
  var providerIdx = 0, tileErrors = 0, tiles = null;
  function useProvider(i) {
    if (tiles) map.removeLayer(tiles);
    tileErrors = 0;
    tiles = L.tileLayer(PROVIDERS[i].url, { attribution: PROVIDERS[i].attribution, maxZoom: 18 }).addTo(map);
    tiles.on("tileerror", function () {
      if (++tileErrors > 4 && providerIdx < PROVIDERS.length - 1) useProvider(++providerIdx);
    });
  }
  useProvider(0);

  /* Dark mode: darken the tiles with a CSS filter (see .site-map--dark) */
  function setTiles() {
    document.getElementById("site-map").classList.toggle("site-map--dark", isDark());
  }
  setTiles();

  var layer = L.layerGroup().addTo(map);

  function activeTypes() {
    var on = {};
    document.querySelectorAll(".map-filters input").forEach(function (cb) { on[cb.value] = cb.checked; });
    return on;
  }

  function render(fit) {
    var on = activeTypes();
    var bounds = [];
    var listHtml = [];
    layer.clearLayers();

    Object.keys(byPlace).forEach(function (key) {
      var p = PLACES[key];
      var items = byPlace[key].filter(function (e) { return on[e.type]; });
      if (!items.length) return;

      var main = ORDER.filter(function (t) { return items.some(function (e) { return e.type === t; }); })[0];
      var html = '<div class="map-popup"><h4>' + esc(p.name) + "</h4>" + (p.org ? "<em>" + esc(p.org) + "</em>" : "");
      ORDER.forEach(function (t) {
        var group = items.filter(function (e) { return e.type === t; });
        if (!group.length) return;
        html += '<p style="margin:0.4rem 0 0.15rem"><span class="map-swatch map-swatch--' + t + '"></span> <strong>' + TYPES[t].label + "</strong></p><ul>";
        group.forEach(function (e) {
          html += "<li>" + esc(e.when) + ": " + esc(e.text) + (e.sub ? " <em>(" + esc(e.sub) + ")</em>" : "") + "</li>";
        });
        html += "</ul>";
      });
      html += "</div>";

      L.circleMarker([p.lat, p.lng], {
        radius: Math.min(6 + items.length * 1.5, 14),
        color: cssVar("--global-bg-color") || "#fff",
        weight: 2,
        fillColor: cssVar("--ac-map-" + main),
        fillOpacity: 0.9
      }).bindPopup(html, { maxWidth: 280 }).bindTooltip(p.name).addTo(layer);

      bounds.push([p.lat, p.lng]);
      listHtml.push('<li><span class="map-swatch map-swatch--' + main + '"></span> <strong>' + esc(p.name) + "</strong> " +
        '<span class="entry-meta">· ' + items.length + (items.length === 1 ? " entry" : " entries") + "</span></li>");
    });

    document.getElementById("place-list").innerHTML = listHtml.join("");
    if (fit && bounds.length) map.fitBounds(bounds, { padding: [30, 30], maxZoom: 6 });
  }

  render(true);
  document.querySelectorAll(".map-filters input").forEach(function (cb) {
    cb.addEventListener("change", function () { render(false); });
  });
  map.on("click", function () { map.scrollWheelZoom.enable(); });

  /* Follow the site light/dark toggle */
  new MutationObserver(function () { setTiles(); render(false); })
    .observe(document.documentElement, { attributes: true, attributeFilter: ["data-theme"] });
})();
</script>
