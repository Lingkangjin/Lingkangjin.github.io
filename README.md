# lingkangjin.github.io — editing guide

Personal academic website of Lingkang Jin, built with Jekyll on the
[Academic Pages](https://academicpages.github.io/) template and published with GitHub Pages.

Most content lives in **YAML lists** (in `_data/` or in the front matter at the top of a page).
To add or change something, you normally edit one list entry and nothing else.

---

## 1. Preview the site locally

The site runs in a Podman container (`docker-compose.yaml`).

```powershell
podman machine start
podman start lingkangjingithubio_jekyll-site_1
```

Wait ~30 s for the build, then open <http://localhost:4000/>.
The server rebuilds when you save a file.

> **Rebuild gotchas**
> - Changes to `_config.yml` need a restart: `podman restart lingkangjingithubio_jekyll-site_1`.
> - Changes to `_data/*.yml` are sometimes not picked up (incremental build). Save the page that
>   uses the data again (e.g. `_pages/talks.md`) or restart the container.
> - Build errors show in `podman logs --tail 30 lingkangjingithubio_jekyll-site_1`.

First time only (no container yet): `podman compose up` in this folder.

Pushing to `master` on GitHub publishes the site (GitHub Pages does a full build).

---

## 2. "I want to change…" → where to edit

| I want to change… | Edit this file |
|---|---|
| Name, job title, photo, email, sidebar links (Scholar, ORCID, …) | `_config.yml` → `author:` block |
| Top menu (order, items) | `_data/navigation.yml` |
| Homepage intro text, tagline, call-to-action buttons | `_pages/about.md` (body, below the `<style>` block) |
| Homepage **news** (non-event items: visits, projects, PhD…) | `_pages/about.md` → `news:` in the front matter |
| Homepage news for a **talk or organized event** | `_data/talks.yml` → add a `news:` line to that event (see §4) |
| How many news items show before "Show older news" | `_pages/about.md` → `news_shown:` |
| Latest journal articles on the homepage (abstract + graphical abstract) | `_pages/publications.md` → `abstract:` and `figure:` on the newest journal articles |
| Open-source software / PyPI cards | `_pages/about.md` → `software:` |
| Research framework diagram | `_pages/about.md` → the `<div class="arch">` block; icons in `images/icons/` |
| **Publications** (journal + conference) | `_pages/publications.md` → `journal_articles:` / `conference_proceedings:` |
| Citations, h-index, research topics (summary box on Publications) | live from OpenAlex; fallback snapshot in `_data/openalex.yml` |
| **Events and talks** (organized events, talks given) | `_data/talks.yml` → `organized:` / `talks:` |
| Event details (programme, organizers, collapsible box) | `_data/talks.yml` → `info:` on that event |
| Seminar series page (abstracts, speaker bios) | `_data/talks.yml` → `details:` on that event |
| Map locations (coordinates) | `_data/places.yml` |
| Map entries that are not talks (career, research visits) | `_data/map.yml` |
| Teaching: course table + notes, lectures, PhD and MSc supervision | `_pages/teaching.md` → `teaching_table:`, `teaching_notes:`, `teaching_courses:`, `phd_supervision:`, `msc_supervision:` |
| Projects (cards, role, partners, outputs) | `_pages/portfolio.md` → `projects:`; `show_images: true` brings back the logos |
| CV page (positions, education, funding schemes, awards, service, skills, languages, references) | `_pages/cv.md` → front matter lists (`funding_schemes:` has name, url, note); projects and teaching are linked to their own pages |
| CV PDF source | `academia_resume.typ` (+ `references.bib`); compile, then copy to `files/CV_Jin.pdf` (see §5) |
| Academic service (organization, reviewing, outreach, memberships) | `_pages/cv.md` → `organization:`, `reviewer_journals:`, `reviewer_conferences:`, `outreach:`, `memberships:` |
| CV PDF (download button) | replace `files/CV_Jin.pdf` |
| Awards, grants, finalist positions (shown in the CV) | `_data/awards.yml` |
| Accent color (TU/e red or blue) | `_config.yml` → `accent_color:` (see §6) |
| Colors, spacing, badges, buttons, all shared styles | `_sass/layout/_academic.scss` |
| Base theme colors (background, text, links) | `_sass/theme/_clean_light.scss`, `_sass/theme/_clean_dark.scss` |
| Favicon | `images/favicon.*`, `favicon.ico` (see §5) |
| Footer ("Last updated", copyright) | `_includes/footer.html` |

---

## 3. Folder structure

```
_config.yml              Site settings, author/sidebar info, theme ("clean")
_data/
  navigation.yml         Top menu
  talks.yml              Organized events + talks (Events page, map, homepage news, seminars)
  places.yml             Map coordinates, referenced by key (e.g. eindhoven)
  map.yml                Extra map entries: career and research visits
  awards.yml             Awards list (shown in the CV)
_pages/                  One file per page (front matter = data, body = layout)
  about.md               Homepage  (/)
  publications.md        Publications (/publications/)
  talks.md               Events and talks + embedded map (/talks/)
  seminars.md            Seminar series: abstracts and bios (/talks/seminars/)
  teaching.md            Teaching and supervision (/teaching/)
  portfolio.md           Projects (/portfolio/)
  cv.md                  CV (/cv/), includes the awards
  map.md                 Stand-alone map (/map/), not in the menu
  awards.md              Redirect /awards/ → /cv/#awards
_includes/               Reusable building blocks
  news-list.html         Homepage news, grouped by year
  pub-timeline.html      Publication list + filters data + "Cite" BibTeX
  event-timeline.html    Event/talk list (+ map pin, event details)
  site-map.html          Leaflet map (used by /talks/ and /map/)
  awards-timeline.html   Awards list
  author-profile.html    Left sidebar
  head/custom.html       Favicon links, extra <head> tags
  footer.html            Footer
_layouts/                Page templates from the theme (archive, single, default)
_sass/
  layout/_academic.scss  All custom styles (palette, timeline, badges, filters, chart…)
  theme/_clean_*.scss    Light / dark base colors
files/                   PDFs served as-is (CV, papers): /files/<name>.pdf
images/                  Photos, logos, icons, favicon, paper covers (images/papers/)
```

Unused template files (demo posts, old talk/teaching collections, generators, demo images)
were removed; they are still in the git history if ever needed.

---

## 4. Data formats (copy an existing entry and edit it)

### Publication — `_pages/publications.md`
```yaml
journal_articles:            # or conference_proceedings:
  - authors: "<strong>Lingkang Jin</strong>, A. Author, B. Author"   # bold = you (drives "First author")
    title: "Paper title"
    venue: "Journal name, vol. 1, 123"
    year: "2026"
    quartile: "Q1"           # SJR best quartile, journals only (optional)
    status: "Early access"   # optional badge
    link_url: "https://doi.org/10.xxxx/yyyy"   # doi.org links also fill the BibTeX doi
    abstract: "…"           # optional; newest 3 with an abstract are featured on the homepage
    figure: "/images/papers/J14.svg"   # optional graphical abstract for the homepage
```
Keep lists **newest first**; numbering ([J13], [C20]) is automatic. The circles, the
per-year chart, filters, search and the "Cite" BibTeX are all generated from these fields.

### Event or talk — `_data/talks.yml`
```yaml
organized:                   # or talks:
  - date: 2026-12-16         # YYYY-MM-DD; future dates get an "Upcoming" badge
    label: "2–4 Sep"         # optional, replaces the shown date
    title: "Event title"
    kind: "Workshop"         # shown before the title
    venue: "Conference name" # talks
    venue_url: "https://…"
    place: eindhoven         # key in _data/places.yml → map pin
    url: "https://…"         # optional [More information] link
    news: "Speaker, <a href='…'>Conference</a>, City"   # optional → homepage news
    news_label: "2–4 Sep"    # optional date text for the news line
    info:                    # optional collapsible "Event details"
      summary: "When, where, aim…"
      programme:
        - time: "10:00"
          item: "Opening"
      organizers: "Names… <strong>Lingkang Jin</strong> …"
    details:                 # optional → card on the seminar series page
      id: short-anchor-id
      abstract: "…"
      speakers:
        - name: "Dr. Name"
          url: "https://…"
          affiliation: "Org"
          bio: "…"
```
A new city needs one entry in `_data/places.yml` (`name`, `org`, `lat`, `lng`).

### Homepage news (non-event) — `_pages/about.md`
```yaml
news:
  - date: 2026-04-01
    label: "Mar – May"       # optional
    text: "Joined project <a href='…'>X</a> as …"
```
Pattern used for all items: *role or event, where (person)* — one line each.

### Project — `_pages/portfolio.md`
```yaml
projects:
  - title: "NAME"
    subtitle: "…"
    period: "2025 – present"
    funding: "Funder"
    excerpt: "One-sentence description."
    link: "https://…"
    role: "Your role."
    image: "/images/logo.png"
    partners: ["Partner A", "Partner B"]
    outputs:                 # optional expandable list
      - label: "Paper or software"
        url: "https://doi.org/…"
```

### Award — `_data/awards.yml`
```yaml
- year: "2026"
  kind: "award"              # award | grant | finalist (badge)
  text: "Description, <i>italic</i> allowed"
```

---

## 5. Images and generated files

- **Graphical abstracts** (homepage, *Latest journal articles*): TikZ pictures in `_tikz/papers/`
  (`J13.tex`, ...; shared preamble and classic xcolor colors in `common.tex`: white background,
  black text and arrows, `blue!70!black`, `red!75!black`, `green!55!black`, `orange`, ...), compiled
  to `images/papers/J13.svg` and referenced by `figure:` on the publication. Edit the `.tex`, then run
  `bash _tikz/papers/build.sh` (needs `latex` + `dvisvgm`, e.g. MiKTeX). Text is converted to
  outlines, so the SVGs look the same in every browser. For a new paper, copy a `J1x.tex`,
  keep the 8 x 6 cm canvas, and build. `_tikz/` starts with `_`, so Jekyll does not publish it.
- **OpenAlex snapshot** (`_data/openalex.yml`): the Publications summary box loads citations,
  h-index and topics live from OpenAlex in the browser and falls back to this file. To refresh it:
  ```bash
  curl -s "https://api.openalex.org/authors/orcid:0000-0002-2993-6844" > oa.json
  ```
  then copy `cited_by_count`, `summary_stats.h_index`, `topics` (name, subfield, count) and
  `counts_by_year` into the file and set `updated:` to today.
- **CV PDF**: compile the Typst source with the Typst container (fonts from Windows):
  ```powershell
  podman run --rm -v "${PWD}:/w" -v "C:\Windows\Fonts:/fonts:ro" -w /w ghcr.io/typst/typst:v0.13.1 compile --font-path /fonts academia_resume.typ academia_resume.pdf
  Copy-Item academia_resume.pdf files/CV_Jin.pdf
  ```
- **Favicon**: `images/favicon.svg` / `favicon-red.svg` (edit text/colors directly), PNG sizes `favicon-32x32.png`,
  `favicon-192x192.png`, `favicon-512x512.png`, `apple-touch-icon-180x180.png`, and `favicon.ico`
  (also copied to the site root).
- **Profile photo**: file named in `_config.yml` → `author.avatar`, stored in `images/`.

---

## 6. Accent color: TU/e red or blue

One setting in `_config.yml` switches the whole site:

```yaml
accent_color : "red"    # TU/e red (#B81B24), matches the PDF CV
accent_color : "blue"   # slide-template blue (#1F5FA8)
```

Restart the local server after changing it (`podman restart lingkangjingithubio_jekyll-site_1`).

What follows the switch:

| Element | How |
|---|---|
| Headings, links, buttons, badges, timeline, map markers, chart, sidebar icons | CSS variables; the red set is the *ACCENT COLOR SWITCH* block at the end of `_sass/layout/_academic.scss` (light and dark mode) |
| Research framework diagram (homepage) | `--brand-*` variables in the same block |
| Favicon and browser theme color | `_includes/head/custom.html` picks `images/favicon-red.*` or `images/favicon.*` |

The graphical abstracts do **not** follow the switch: they use classic TikZ colors on white.

---

## 7. Design rules (keep the site consistent)

- **Palette**: blue accent `#1F5FA8` / `#7FB2E5` / `#DCE9F7` or TU/e red `#B81B24` / `#E58A90` / `#F7DFE1`
  (see §6); text `#1F2937`, grey `#6B7280`. Use the CSS variables
  (`var(--ac-accent)`, `var(--ac-accent-2)`, `var(--ac-line)`, `var(--ac-muted)`, …)
  defined at the top of `_sass/layout/_academic.scss` instead of hard-coded colors,
  so dark mode keeps working.
- **Badges**: `badge--new`, `badge--upcoming`, `badge--info`, `badge--q1`…`q4`.
- **Text** is justified on screens wider than 700px, left-aligned on phones.
- **Corners**: photos and cards use rounded corners on the top-left / bottom-right diagonal.
- **Liquid tip**: inside templates never write `{{ "}" }}` — Liquid stops at the first `}`.
  Use a variable (`{% assign rb = "}" %}{{ rb }}`) as in `_includes/pub-timeline.html`.
