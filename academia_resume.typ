// Academic CV - Lingkang Jin (tenure-track / assistant professor applications)
// Layout follows the LaTeX version: serif body, uppercase ruled sections, footer with name | date | Page N.

// ---- Settings --------------------------------------------------------------
#let tue-red = rgb("#B81B24") // Official TU/e primary red
#let author = "Lingkang Jin"
#let today = datetime.today().display("[month repr:long] [day padding:none], [year]")

#set document(author: author, title: "Lingkang Jin - Academic CV")
#set page(
  paper: "a4",
  margin: (x: 0.75in, top: 0.75in, bottom: 1in),
  footer: context [
    #line(length: 100%, stroke: 0.4pt)
    #v(-0.4em)
    #grid(
      columns: (1fr, 1fr, 1fr),
      align: (left, center, right),
      author, today, text(fill: tue-red, weight: "bold")[Page #counter(page).display() of #counter(page).final().first()],
    )
  ],
)
#set text(font: "Times New Roman", size: 11pt, lang: "en")
#set par(justify: true, leading: 0.6em, spacing: 0.9em)
#set list(spacing: 0.5em, indent: 0.4em)
#set enum(spacing: 0.5em, indent: 0.4em)
#show table: set par(justify: false)

// Section titles: uppercase, bold, horizontal rule
#show heading.where(level: 1): it => block(above: 1.3em, below: 0.7em, sticky: true)[
  #text(size: 12.5pt, weight: "bold", tracking: 0.06em)[#upper(it.body)]
  #v(-0.7em)
  #line(length: 100%, stroke: 0.8pt + tue-red)
]
#show heading.where(level: 2): it => block(above: 1em, below: 0.6em, sticky: true, text(size: 11pt, weight: "bold", it.body))

// ---- Helpers ---------------------------------------------------------------
// Date column + content, as the LaTeX longtable (18% / 78%)
#let entry(date, body) = block(below: 0.8em, breakable: false, grid(
  columns: (18%, 1fr),
  column-gutter: 1em,
  date, body,
))

// Numbered list item with bracketed label, e.g. [J13], [S9]
#let tagged(tag, body) = block(below: 0.45em, grid(
  columns: (2.8em, 1fr),
  column-gutter: 0.5em,
  align(right)[\[#tag\]], body,
))

// Supervision: badge for students who continued to a PhD, and external collaboration line
#let phd-badge = box(
  inset: (x: 2.5pt, y: 0pt), outset: (y: 1.5pt), radius: 2pt, stroke: 0.6pt + tue-red,
  text(size: 8pt, weight: "bold", fill: tue-red, tracking: 0.04em)[→ PhD],
)
#let collab(body) = [ \ #text(size: 10pt)[#sym.arrow.r.curve #body]]

// ---- Publications: generated automatically from references.bib -------------
// Own papers are detected by author "L. Jin"; other entries in the .bib are ignored.
// Categories: J = journal (@article), C = conference (@inproceedings), R = preprint (arXiv / no journal).
// Sorted newest first (year, first author, title) and numbered in reverse, as biblatex ydnt.
// Cite in the text by bib key: #cites("11475178") -> [J12]
#import "@preview/citegeist:0.2.0": load-bibliography
#let bib = load-bibliography(read("references.bib"))

#let clean(s) = s.replace(regex("[{}]"), "").replace("\&", "&").replace("--", "–").trim()
#let initials(given) = {
  given
    .split(regex("[\s~]+"))
    .filter(p => p.trim(".") != "")
    .map(p => p.split("-").filter(q => q.trim(".") != "").map(q => q.trim(".").clusters().first() + ".").join("-"))
    .join(" ")
}
#let fmt-name(n) = {
  let parts = ()
  if n.given != "" { parts.push(initials(n.given)) }
  if n.prefix != "" { parts.push(n.prefix) }
  parts.push(clean(n.family))
  parts.join(" ")
}
#let join-authors(names) = {
  let a = names.map(fmt-name)
  if a.len() == 1 { a.first() }
  else if a.len() == 2 { a.join(" and ") }
  else { a.slice(0, -1).join(", ") + ", and " + a.last() }
}
#let authors-of(e) = e.parsed_names.at("author", default: ())
#let is-own(e) = authors-of(e).any(n => n.family == "Jin" and n.given.starts-with("L"))
#let category(e) = {
  let f = e.fields
  if "eprint" in f or (e.entry_type == "article" and "journal" not in f) { "R" }
  else if e.entry_type == "article" { "J" }
  else if e.entry_type == "inproceedings" { "C" }
  else { "R" }
}
#let fmt-details(f, cat) = {
  if cat == "R" { return ("arXiv:" + f.at("eprint", default: ""),) }
  let d = ()
  let vol = f.at("volume", default: "").split(":").first().trim()
  if vol != "" { d.push("vol. " + vol) }
  let num = f.at("number", default: "")
  if num != "" { d.push("no. " + num) }
  let pages = f.at("pages", default: "")
  if pages == "1-1" { d.push("early access") }
  else if pages.contains("-") { d.push("pp. " + pages.replace(regex("-+"), "–")) }
  else if pages != "" { d.push("Art. no. " + pages) }
  let artno = f.at("article-number", default: "")
  if artno != "" { d.push("Art. no. " + artno) }
  d
}
// Journal quartiles (Scimago SJR, quartile in the journal's main energy/engineering category).
// Edit here when rankings change; journals not listed get no tag.
#let journal-quartile = (
  "IEEE Transactions on Smart Grid": "Q1",
  "Applied Energy": "Q1",
  "Applied Thermal Engineering": "Q1",
  "Energy Conversion and Management": "Q1",
  "Journal of Energy Storage": "Q1",
  "International Journal of Hydrogen Energy": "Q1",
  "Energies": "Q2",
  // "Renewable and Sustainable Energy Transition": "Q?", // verify on scimagojr.com
)
#let quartile-of(e) = if e.entry_type == "article" { journal-quartile.at(clean(e.fields.at("journal", default: "")), default: none) } else { none }
#let q-badge(q) = box(
  fill: if q == "Q1" { tue-red } else { luma(110) },
  inset: (x: 2.5pt, y: 0pt), outset: (y: 1.5pt), radius: 2pt,
  text(size: 8pt, weight: "bold", fill: white, tracking: 0.04em)[#q],
)

#let fmt-entry(e, cat) = {
  let f = e.fields
  let q = quartile-of(e)
  let venue = if cat == "R" { [_arXiv preprint_] }
    else if "journal" in f { [#emph(clean(f.journal))#if cat == "J" and q != none [ #q-badge(q)]] }
    else { [in _Proc. #clean(f.at("booktitle", default: "")).replace(regex("^Proceedings of (the )?"), "")_] }
  let doi = f.at("doi", default: "").replace(regex("^https?://(dx\.)?doi\.org/"), "")
  let url = f.at("url", default: "")
  [
    #join-authors(authors-of(e)), "#clean(f.title)," #venue#for x in fmt-details(f, cat) [, #x], #f.year.
    #if doi != "" [#link("https://doi.org/" + doi)[#text(size: 9.5pt)[doi:#doi]]] else if url != "" [#link(url)[#text(size: 9.5pt)[#url]]]
  ]
}

#let pubs = {
  let entries = bib.values().filter(is-own)
  entries = entries.sorted(key: e => lower(clean(authors-of(e).first().family) + " " + clean(e.fields.title)))
  entries = entries.sorted(key: e => -int(e.fields.year)) // stable sort: year first
  let out = ()
  for cat in ("J", "C", "R") {
    let es = entries.filter(e => category(e) == cat)
    for (i, e) in es.enumerate() {
      out.push((
        key: e.entry_key,
        cat: cat,
        id: cat + str(es.len() - i),
        first: authors-of(e).first().family == "Jin",
        q: if cat == "J" { quartile-of(e) } else { none },
        body: fmt-entry(e, cat),
      ))
    }
  }
  out
}
#let pub-ids = pubs.map(p => (p.key, p.id)).to-dict()
#let n-pubs(cat, first: false, q: none) = pubs.filter(p => p.cat == cat and (not first or p.first) and (q == none or p.q == q)).len()

// Publication list: own name in bold, label per entry so the statements can link to it
#let pub-list(cat) = {
  show "L. Jin": strong
  for p in pubs.filter(p => p.cat == cat) {
    [#metadata(p.key)#label("pub:" + p.key)]
    tagged(p.id, p.body)
  }
}

// Key figure for the research profile: large number with a short caption
#let stat(num, caption) = align(center)[
  #text(size: 20pt, weight: "bold", fill: tue-red)[#num] \
  #v(-0.6em)
  #text(size: 9.5pt)[#caption]
]

// In-text citation by bib key, e.g. #cites("11475178", "11245557") -> [J12, J13]
#let cites(..keys) = [\[#keys.pos().map(k => link(label("pub:" + k))[#pub-ids.at(k)]).join(", ")\]]

// =============================================================================
// Header
// =============================================================================
#align(center)[
  #text(size: 28pt, weight: "bold", tracking: 0.02em)[Lingkang Jin, Ph.D.]
  #v(-0.7em)
  #text(size: 12pt, style: "italic")[Postdoctoral Researcher, Electrical Energy Systems group, Eindhoven University of Technology]
  #v(-0.3em)
  #text(size: 10.5pt)[
    #link("mailto:l.jin@tue.nl")[l.jin\@tue.nl]
    #h(0.4em) · #h(0.4em)
    #link("https://scholar.google.com/citations?hl=it&user=WEonyNcAAAAJ&view_op=list_works&sortby=pubdate")[Google Scholar]
    #h(0.4em) · #h(0.4em)
    #link("https://orcid.org/0000-0002-2993-6844")[ORCID 0000-0002-2993-6844]
    #h(0.4em) · #h(0.4em)
    #link("https://lingkangjin.github.io/")[lingkangjin.github.io]
  ]
]

= Research Profile

Energy-systems researcher working at the interface of *mathematical optimization, multi-physics asset modelling and machine learning* for power and multi-energy systems. My work builds decision-support tools for grid operators and policymakers, in particular for *grid congestion management*, energy storage (Li-ion batteries, hydrogen) and *AI surrogates* that make security-constrained optimization tractable. I combine academic output with real-world deployment in Dutch demonstrators together with distribution system operators (Enexis, Stedin) and industry (DNV, Phase to Phase, Technolution).

#v(0.3em)
#block(breakable: false)[
  #set par(justify: false)
  #grid(
    columns: (1fr,) * 6,
    column-gutter: 0.6em,
    stat(str(n-pubs("J")), [journal articles \ (#n-pubs("J", first: true) first-authored)]),
    stat(str(n-pubs("C")), [conference \ papers]),
    stat("12", [h-index \ (Google Scholar)]),
    stat("10", [MSc theses \ supervised]),
    stat("3", [PhD students \ co-supervised]),
    stat("5", [university \ courses teaching involved]),
  )
  #v(0.2em)
  #align(center)[_Task leader in 2 RVO-MOOI and 1 Erasmus+ project #h(0.3em) · #h(0.3em) research in Italy, Denmark and the Netherlands_]
]

// =============================================================================
= Academic Positions

#entry[01/2024 -- present][
  *Postdoctoral Researcher* \
  Electrical Energy Systems (EES) group, Department of Electrical Engineering, Eindhoven University of Technology, Eindhoven (NL)
  - Task leader in the RVO-MOOI projects *ORKEST* (with Stedin) and *NO-GIZMOS* (with Enexis) on grid congestion management; leader of the optimization module (Result 4) of ORKEST.
  - Co-supervision of 3 PhD students and supervision of 5 MSc theses; co-lecturer of _Electricity Markets: Modeling and Optimization_.
  - Task leader (Tasks 2.3 and 4.2) in the Erasmus+ project *SG-SKILL*; member of the EES group's strategic funding task force; proposal writing.
]

#entry[03/2023 -- 07/2023][
  *Visiting PhD Researcher* (Erasmus+ Campus World grant) \
  Electrical Energy Systems group, Eindhoven University of Technology, Eindhoven (NL) \
  Host: Dr. Christina Papadimitriou. Output: battery degradation as a KPI for multi-objective optimization #cites("JIN2024_battery").
] <visit-tue>

#entry[03/2022 -- 09/2022][
  *Visiting PhD Researcher* (Erasmus+ Campus World grant) \
  DTU Energy, Technical University of Denmark, Copenhagen (DK) \
  Host: Prof. Henrik Lund Frandsen; co-host: Dr. Rafael Nogueira Nakashima. Output: thermo-electrochemical modelling of alkaline electrolysis #cites("JIN2025125154", "Jin2023_alk").
] <visit-dtu>

// =============================================================================
= Education

#entry[10/2020 -- 03/2024][
  *Ph.D. in Energy Systems* \
  Department of Industrial Engineering and Mathematical Sciences, Università Politecnica delle Marche, Ancona (IT) \
  Thesis: _Energy storage in multi-energy carrier communities: Li-ion batteries and hydrogen multi-physical details for integration into the planning stage_ \
  Supervisor: Prof. Gabriele Comodi. *Finalist, AIMSEA best PhD thesis award (selected 2025).*
] <edu-phd>

#entry[09/2017 -- 10/2019][
  *M.Sc. in Mechanical Engineering*, grade *110/110 cum laude* \
  Università Politecnica delle Marche, Ancona (IT) \
  Thesis: _Feasibility study and preliminary design of an offshore wind farm in the Mediterranean Sea: Wind resource assessment_ \
  Supervisor: Prof. Renato Ricci
]

#entry[09/2014 -- 07/2017][
  *B.Sc. in Mechanical Engineering*, grade *106/110* \
  Università Politecnica delle Marche, Ancona (IT) \
  Thesis: _Sensitivity analysis of a blind processing method for continuous scanning laser Doppler vibrometry_ \
  Supervisor: Prof. Paolo Castellini; co-supervisors: Prof. Milena Martarelli, Prof. Paolo Chiariotti
]

// =============================================================================
= Research Projects and Funding

#entry[2026 -- present][
  #link("https://sgskill.eddie-skills.eu/")[*SG-SKILL*] -- Skill-based education for smart-grid job profiles. _Erasmus+, European Union._ \
  Role: leader of Tasks 2.3 and 4.2; contributor to WP2 and WP3. 15 partners incl. E.DSO, Iberdrola, T&D Europe, RWTH Aachen, Politecnico di Milano.
] <proj-sgskill>
#entry[2025 -- present][
  #link("https://projecten.topsectorenergie.nl/projecten/orkest-optimal-integration-of-network-flexibiilty-and-asset-intelligence-to-increase-large-scale-integration-of-res-while-maintaining-reliability-37711")[*ORKEST*] -- Optimal integration of network flexibility and asset intelligence to increase large-scale integration of RES while maintaining reliability. _RVO-MOOI (Netherlands Enterprise Agency)._ \
  Role: leader of Result 4, development and integration of the optimization module. Partners: Stedin, DNV, Netbeheer Nederland, Phase to Phase, Technolution.
] <proj-orkest>
#entry[2024 -- 2025][
  #link("https://projecten.topsectorenergie.nl/projecten/netoptimalisatie-voor-grootschalige-inpassing-zon-en-windstroom-middels-opslag-en-software-36476")[*NO-GIZMOS*] -- Grid optimization for large-scale integration of solar and wind power through storage and software. _RVO-MOOI._ \
  Role: research, development and deployment of the day-ahead home-battery steering algorithm (5--6% grid relief in a low-voltage demonstrator) #cites("11180463", "11305401"). Partners: Enexis, CGI, energieKansen, Hanze UAS.
] <proj-nogizmos>
#entry[2023 -- 2024][
  *GRETHA* -- A novel GReen Energy Technology based on fuel cells, Hydrogen And renewables. _Italian Ministry project._
]
#entry[2020 -- 2023][
  #link("https://eneuron.eu/")[*eNeuron*] -- Optimising the design and operation of local energy communities based on multi-carrier energy systems. _Horizon 2020._ \
  Role: research support for WP2 (18 partners incl. EPRI, SINTEF, TECNALIA, EDP Labelec, ENEA) #cites("JIN2023_campus", "Rossi_2024").
]
#entry[2020 -- 2022][
  *Ricerca di Sistema Elettrico* -- Methodology for the optimal energy-economic planning of a multi-energy system energy community in the medium to long term. _Italian Ministry project_ #cites("PIZZUTI2024").
]
#entry[2022][
  *RECITY* -- Resilient City: Everyday Revolution. _Italian Ministry project._
]


// =============================================================================
= Funding Schemes Involved

- Horizon Europe, Cluster 5 (Climate, Energy and Mobility)
- Netherlands Enterprise Agency (RVO) MOOI calls
- Dutch Research Council (NWO) Take-off
- #link("https://cetpartnership.eu/")[CETPartnership]
- Driving Urban Transitions (#link("https://dutpartnership.eu/calls/dut-call-2026#documents-1249")[DUT])



// =============================================================================
= Awards and Grants


#entry[2026][*Excellent course evaluation 2025/2026 for Electricity Markets: Modeling and Optimization (5LEP0)* as role of co-lecturer]
#entry[2026][*Eurotech Visiting Researcher Programme* grant for a research visit to DTU Wind and Energy Systems (DK)]
#entry[2026][*Finalist, Best Paper Award*, TU/e Postdoc Association (400+ postdocs)]
#entry[2025][*Finalist, best PhD thesis award*, AIMSEA (Italian Association of Turbomachinery and Energy Systems)]
#entry[2023][*Erasmus+ Campus World* grant for a research visit to the EES group, TU/e (NL)]
#entry[2022][*Erasmus+ Campus World* grant for a research visit to DTU Energy (DK)]
#entry[2014][_In Studiis Laus_, Rotary Club Senigallia, and _Premio Due Valli_, Associazione GIO Misa e Nevola, for excellence in the high-school final exam]

// =============================================================================
= Teaching

#table(
  columns: (auto, 1fr, auto, auto),
  align: (left, left, left, left),
  stroke: none,
  inset: (x: 4pt, y: 4pt),
  table.hline(stroke: 0.8pt),
  [*Years*], [*Course (programme)*], [*Role*], [*Institution*],
  table.hline(stroke: 0.4pt),
  [2025 -- 2026], [_Electricity Markets: Modeling and Optimization_ (5LEP0, MSc EE)], [Co-lecturer, assessor], [TU/e],
  [2025 -- 2026], [_System Integration Project_ (5LEF0, MSc SET)], [Lecturer, master class], [TU/e],
  [2024 -- 2026], [_Electrical Power Systems for EE_ (5EWD0, MSc EE)], [Guest lecturer], [TU/e],
  [2022 -- 2024], [_Energy Storages and their Management_ (MSc ME)], [Guest lecturer, master class], [UNIVPM],
  [2023], [_Co-generation and White Certificates_ (MSc ME)], [Guest lecturer], [UNIVPM],
  table.hline(stroke: 0.8pt),
)

- *Electricity Markets (5LEP0):* lectures and hands-on Jupyter sessions on day-ahead market clearing, single/dual imbalance pricing and renewable producers' market participation under uncertainty (CVaR stochastic programming). Course evaluation 2025/26: excellent.
- *System Integration Project (5LEF0):* master class on how to build optimization models: mathematical formulation, modular model architecture and computational exercises.
- *Electrical Power Systems for EE (5EWD0):* lectures on energy storage technologies, their technical specifications and their role in future power systems.
- *UNIVPM:* master classes on Li-ion, hydrogen and supercapacitor storage and on Python/Pyomo optimization models; lecture on co-generation plants.
- *Teaching qualification:* University Teaching Qualification (UTQ/BKO) in progress at TU/e; certificate expected before July 2027. Planned continued involvement in 5LEP0, 5LEF0 and 5EWD0.

// =============================================================================
= Supervision

== MSc theses (10, of whom 4 continued to a PhD)
#text(size: 10pt)[#phd-badge continued to a PhD #h(1em) #sym.arrow.r.curve co-supervision with industry or another research group]
#v(0.2em)
#tagged("S10")[*Shuai Feng* #phd-badge, _Grid-code-compliant hybrid renewable energy solutions for data centers: Optimal sizing under post-fault active power requirements_, TU/e, 2026. #collab[In collaboration with *Shell*, company supervisor #link("https://www.linkedin.com/in/yin-sun-ph-d-73308019/")[Dr. Yin Sun].]]
#tagged("S9")[*Yuanchun Chen*, _Data-driven efficiency parametrization from operational telemetry: Improved state-of-energy tracking and aging-aware dispatch for battery energy storage systems_, MSc Sustainable Energy Technology, TU/e, 2026. #collab[In collaboration with #link("https://zympler.com/")[*Zympler*].]]
#tagged("S8")[*Chengyuan Guan*, _#link("https://research.tue.nl/nl/studentTheses/optimal-sizing-of-hybrid-renewable-energy-solutions-for-data-cent/")[Optimal sizing of hybrid renewable energy solutions for data centers: Case studies of non-firm grid, reduced- and off-grid scenarios]_, MSc Sustainable Energy Technology, TU/e, 2025. #collab[In collaboration with *Shell*, company supervisor #link("https://www.linkedin.com/in/yin-sun-ph-d-73308019/")[Dr. Yin Sun].]]
#tagged("S7")[*Dennis Hollanders*, _#link("https://research.tue.nl/en/studentTheses/graph-neural-networks-for-distribution-network-reconfiguration-op/")[Graph neural networks for distribution network reconfiguration optimization]_, Information Systems group, Dept. of Industrial Engineering & Innovation Sciences, TU/e, 2025. #collab[Co-supervised with #link("https://www.tue.nl/en/research/researchers/laurens-bliek")[Dr. Laurens Bliek] (Information Systems group, TU/e).]]
#tagged("S6")[*Stefan De Lange* #phd-badge, _#link("https://research.tue.nl/nl/studentTheses/hybrid-heat-pump-optimization-for-flexibility-provision/")[Hybrid heat pump optimization for flexibility provision: Modeling and simulation]_, Dept. of Electrical Engineering, TU/e, 2024 (co-author of #cites("10863630", "11169153")).]
#tagged("S5")[*Fabian Caipa Cure*, _#link("https://research.tue.nl/en/studentTheses/adaptive-distributionally-robust-optimization-for-residential-ene/")[Adaptive distributionally robust optimization for residential energy management under non-firm capacity contracts]_, MSc Sustainable Energy Technology, TU/e, 2024.]
#tagged("S4")[*Francesco Panara*, _#link("https://tesi.univpm.it/handle/20.500.12075/15456")[Study of hydrogen-to-power systems: State of the art of alkaline and PEM fuel cells and performance evaluation through Python modelling]_, UNIVPM, 2023.]
#tagged("S3")[*Filippo Onori* #phd-badge, _#link("https://tesi.univpm.it/handle/20.500.12075/15454")[Design and management of a battery energy storage system (BESS) to provide flexibility services to the national electricity grid]_, UNIVPM, 2023.]
#tagged("S2")[*Francesca Mennilli* #phd-badge, _#link("https://tesi.univpm.it/handle/20.500.12075/9472")[Study of power-to-hydrogen systems: State of the art of the electrolyser and its modelling using Python]_, UNIVPM, 2022 (co-author of #cites("MENNILLI_2024", "JIN2025125765", "Mennilli_2023_ATI", "Mennilli2024")).]
#tagged("S1")[*Luca Ciotti*, _#link("https://tesi.univpm.it/handle/20.500.12075/9465")[Study of power-to-hydrogen systems: State of the art of the storage and its modelling using Python]_, UNIVPM, 2022.]

== PhD co-supervision (3)
#tagged("P3")[#link("https://research.tue.nl/en/persons/ranier-alexsander-arruda-moura/")[*Ranier Alexsander Arruda Moura*], _Copula-based synthetic profile generation for MV distribution networks_, TU/e, 2025 -- present.]
#tagged("P2")[#link("https://research.tue.nl/nl/persons/niek-brekelmans/")[*Niek Brekelmans*], _MV/LV power transformer reliability and aging analysis for system operation_, TU/e, 2025 -- present.]
#tagged("P1")[#link("https://www.linkedin.com/in/yifanzhang-ceng/")[*Yifan Zhang*], _MV/LV cable reliability and aging analysis for system operation_, TU/e and DNV, 2025 -- present.]

// =============================================================================
= Publications

#n-pubs("J") journal articles (#n-pubs("J", first: true) first-authored; #n-pubs("J", q: "Q1") in #q-badge("Q1") journals), #n-pubs("C") conference papers (#n-pubs("C", first: true) first-authored), #n-pubs("R") #if n-pubs("R") == 1 [preprint;] else [preprints;] h-index 12 (#link("https://scholar.google.com/citations?hl=it&user=WEonyNcAAAAJ&view_op=list_works&sortby=pubdate")[Google Scholar]). 

== Journal articles
#text(size: 10pt)[#q-badge("Q1") #q-badge("Q2") journal quartile (Scimago SJR, main subject category)]
#v(0.2em)
#pub-list("J")

== Conference papers
#pub-list("C")

== Preprints
#pub-list("R")

// =============================================================================
= Academic Service and Outreach

== Organization and leadership
- Co-organizer and chair of the workshop #link("https://ees-tue.github.io/congestion-management-nl/home/")[_Congestion Management in the Netherlands 2025_], TU/e.
- EIRES (Eindhoven Institute for Renewable Energy Systems) representative at the EU Sustainable Energy Week (EUSEW) Energy Fair 2026.
- Member of the strategic Intelligent Energy Systems monitoring task force of the EES group, TU/e.

== Reviewing
- *Journals:* IEEE Transactions on Smart Grid, IEEE Transactions on Intelligent Transportation Systems, IEEE Systems Journal, Applied Energy, Energy Conversion and Management, Journal of Energy Storage, Sustainable Energy, Grids and Networks, Sustainability.
- *Conferences:* IEEE ISGT Europe, IEEE PowerTech, SEST, ECOS.

== Invited talks and dissemination
- Speaker at 20+ venues for academic, industrial and general audiences, incl. Enlit Europe, EUSEW and DTU Wind and Energy Systems.

== Memberships
- IEEE Power & Energy Society (since 2024); Italian Association of Turbomachinery and Energy Systems, AIMSEA (2020 -- 2024); Order of Engineers, Italy (2020 -- 2024); SAE International (2018 -- 2019).



// =============================================================================
= Open-Source Software and Data

Python packages released on GitHub and PyPI (#link("https://github.com/lingkangjin")[github.com/lingkangjin]):

#entry[2026][
  #link("https://github.com/Lingkangjin/AEC-Modelling")[*aec-modelling*] -- Alkaline water electrolysis modelling, developed with DTU Energy. Four-parameter semi-empirical electrochemical polarisation model with fitting tools, 0D transient and 1D thermal stack models, and bundled literature and field datasets for power-to-hydrogen studies #cites("JIN2025125154", "Jin2023_alk"). \
  #text(size: 10pt)[`pip install aec-modelling` · #link("https://pypi.org/project/aec-modelling/")[PyPI]]
]
#entry[2026][
  #link("https://github.com/lingkang95/Liander_open_data")[*liander-open-data*] -- Lightweight SQLite database, Python API and CLI for the open 15-minute electricity load profiles of the Dutch DSO Liander per SBI (business activity) code, including a dictionary of 1,427 SBI codes; returns pandas DataFrames. \
  #text(size: 10pt)[`pip install liander-open-data` · #link("https://pypi.org/project/liander-open-data/")[PyPI]]
]


// =============================================================================
= Languages and Certificates

#entry[Languages][Chinese (native), Italian (native), English (C1, professional working language), Dutch (A2, learning)]
#entry[2022][*Cambridge C1 Advanced (CAE)*, English]
#entry[2019][*Cambridge B2 First (FCE)*, English]
#entry[2019][*Professional engineering licence* (Abilitazione all'esercizio della professione di Ingegnere, Sezione A), Italy]

// =============================================================================
= References

#let referee(name, url, affiliation, relation) = block(breakable: false)[
  #link(url)[*#name*] \
  #text(size: 10pt)[#affiliation \ #emph(relation)]
]
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  row-gutter: 1em,
  referee([Dr. Nikolaos Paterakis], "https://www.tue.nl/en/research/researchers/nikolaos-paterakis",
    [Electrical Energy Systems group, Eindhoven University of Technology (NL)], [Postdoctoral supervisor for #link(<proj-nogizmos>)[NO-GIZMOS] (2024 -- 2025)]),
  referee([Dr. Phuong Nguyen], "https://www.tue.nl/en/research/researchers/phuong-nguyen",
    [Electrical Energy Systems group, Eindhoven University of Technology (NL)], [Postdoctoral supervisor for #link(<proj-orkest>)[ORKEST] (2025 -- present)]),
  referee([Dr. Christina Papadimitriou], "https://www.tue.nl/en/research/researchers/christina-papadimitriou",
    [Electrical Energy Systems group, Eindhoven University of Technology (NL)], [Postdoctoral supervisor for #link(<proj-sgskill>)[SG-SKILL] (2026 -- present); host of #link(<visit-tue>)[PhD visit] (2023)]),
  referee([Prof. Gabriele Comodi], "https://www.univpm.it/Entra/Engine/RAServePG.php/P/320710010421/idsel/590/docname/GABRIELE%20COMODI",
    [Dept. of Industrial Engineering and Mathematical Sciences, Università Politecnica delle Marche (IT)], [#link(<edu-phd>)[PhD supervisor] (2020 -- 2024)]),
  referee([Dr. Rafael Nogueira Nakashima], "https://orbit.dtu.dk/en/persons/rafael-nogueira-nakashima/",
    [DTU Energy, Technical University of Denmark (DK)], [Co-host of #link(<visit-dtu>)[PhD visit] (2022)]),
)

// =============================================================================
#pagebreak()
= Research Statement

== Vision
Energy-system models are the everyday decision tools of grid operators, market operators and policymakers: they clear markets, schedule assets and coordinate network operators with end users. These models are now under pressure. Flexible assets such as batteries, electrolysers and heat pumps are being connected faster than grids can be reinforced, and inaccurate models translate directly into missed connections, long waiting lists for grid access and avoidable social costs.

To remain tractable, current practice relies mainly on linear and mixed-integer linear programming and describes assets from a purely electrical perspective, where power is the only variable. The thermal and electrochemical dynamics that determine efficiency, degradation and safe operating limits are largely neglected.

My research vision is to close this gap with a *bottom-up approach*: embedding the essential multi-physics behaviour of energy assets into system-level planning and operation problems, and using *machine learning to keep these richer models fast enough* for real-world decisions. The result is a hybrid modelling framework -- physics-based where accuracy matters, AI-accelerated where computation is the bottleneck -- that delivers reliable decision-support tools for grid operators and policymakers.

== Past research
My research so far follows three interconnected directions, all addressing the question of how complex energy assets can be integrated into system-level decisions.

+ *System-level optimization.* I developed deterministic, bilevel and multi-objective optimization models (LP, MILP, QP) for multi-energy systems, quantifying the synergies between energy carriers in local energy communities #cites("JIN2023_hydro", "JIN2023_campus", "PIZZUTI2024", "Somma_2024"). At TU/e I moved to distribution-grid congestion management from the perspective of both network operators and end users, with validation in real Dutch demonstrators #cites("10863630", "11180463", "11305401").
+ *Multi-physics asset modelling.* Supported by competitive mobility grants, I characterized the thermal and electrochemical behaviour of alkaline electrolysers at DTU (2022) #cites("JIN2025125154", "Jin2023_alk"), and quantified Li-ion degradation as an implicit operating cost at TU/e (2023) #cites("JIN2024_battery"). My PhD thesis integrates these results and their system-level impact.
+ *Machine learning for tractability.* Detailed asset physics introduces non-linearities and bilevel structures that are computationally expensive. I therefore developed ML surrogates that learn the active constraints of power-system problems from real distribution-grid data #cites("11245557"), Graph Neural Network surrogates for scheduling problems #cites("11475178") and surrogate-based reinforcement learning for bidding in local flexibility markets #cites("11169071"), and I contributed to measurement-based real-time operation that respects battery voltage and thermal limits #cites("zhan2025realtimemeasurementbasedoptimizationdistribution").

== Future research plan
I will build on this momentum along three lines that converge into one framework:

- *Asset physics in system operation.* Extend multi-physics modelling to grid assets, starting with the aging of power transformers and cables in the daily operation of distribution system operators (PhD projects P1 and P2, with DNV and Stedin).
- *Generalizable AI surrogates.* Graph Neural Network surrogates have proven effective for deterministic problems #cites("11475178"). I will investigate transfer learning across network topologies and the extension of surrogates to stochastic and robust formulations.
- *Scenario generation and uncertainty quantification.* The quality of input data drives both real-world alignment and surrogate training. I will develop data-driven and generative scenario-generation methods, such as copula-based synthetic profiles (PhD project P3), tailored to each application. Energy informatics plays a central role here.

== Funding plan
- *Individual grants:* the #link("https://erc.europa.eu/apply-grant/starting-grant")[*ERC Starting Grant*].
- *Consortium grants:* #link("https://research-and-innovation.ec.europa.eu/funding/funding-opportunities/funding-programmes-and-open-calls/horizon-europe/cluster-5-climate-energy-and-mobility_en")[*Horizon Europe Cluster 5*] (climate, energy and mobility) and the #link("https://cetpartnership.eu/")[*Clean Energy Transition Partnership*], building on my network in the Netherlands, Denmark and Italy.
// - *National schemes with industry:* #link("https://www.rvo.nl/subsidies-financiering/mooi")[*RVO MOOI*], where I already hold task-leader roles in ORKEST and NO-GIZMOS, and NWO programmes with industrial co-funding.
- *Direct industry collaboration:* contract research with grid operators, consultancies and technology providers, with research questions driven by concrete business cases.

// =============================================================================
= Teaching and Supervision Statement

== Teaching vision
I see teaching as creating a *safe and positive learning environment* in which students dare to ask questions, discuss and take an active role. In my lectures I achieve this in three ways:

- *Active listening.* When a student asks a question, I first rephrase it and ask for clarification before answering. This makes sure I address the student's real difficulty, makes the question accessible to the whole group (others often share the same doubt) and gives me direct insight into how students interpret the material. Taking questions seriously shows students that their contribution is valued, which encourages further participation.
- *Guiding attention.* I point at the exact part of an equation or piece of code I am explaining and move through the classroom. This helps students follow complex content and reduces the distance between teacher and students, so it is easier for them to speak up.
- *From concept to implementation.* I move step by step from slides for the concepts, to written notes for the mathematical formulation, to interactive Jupyter notebooks for the implementation. Students approach the topic at increasing levels of concreteness, and the lecture connects directly to their course assignments.

Reflection is part of my practice. A recorded lecture and peer observations within my University Teaching Qualification (UTQ/BKO), for which I expect the certificate before July 2027, showed that the interaction with students was a clear strength, and also gave me concrete points to develop:

- *Structure:* I divide the content into short blocks, each followed by a planned moment for questions and discussion, so that interaction stays valuable without students losing track of the lecture.
- *Prior knowledge:* I start each lecture with a short recap of earlier material linked to the new topic, so that all students start from the same foundation.
- *Delivery:* a well-structured lesson plan, clear key points on the slides and growing experience help me deliver content calmly and confidently from the first minute.

== Supervision vision
My aim is to help students become *independent researchers and professionals* who can think constructively and critically about their own work. I do this by challenging them to defend and justify their choices, while giving them the tools and direction they need to do so themselves. Supervision, in my view, means helping students take ownership of their project rather than taking it over from them. This prepares them for their future as researchers and professionals: of the ten MSc students I supervised, four continued to a PhD, and several co-authored peer-reviewed publications #cites("MENNILLI_2024", "JIN2025125765", "Mennilli_2023_ATI", "Mennilli2024", "10863630", "11169153").

// // =============================================================================
// = Statement on AI in Research and Development

// == AI in research
// Large language models and AI assistants (e.g. ChatGPT, Gemini, Claude) are already part of research practice. I believe their use is inevitable and should be guided by critical thinking: they support, but never replace, the researcher's own ideas, and every output must be reviewed, verified and tested by the researcher. I use AI tools only where they add value, because many tasks are essential to keep core research skills trained:

// - *Idea generation:* AI may suggest directions, but their validity and feasibility must be elaborated and verified by the researcher.
// - *Figures and presentations:* turning a complex problem into a clear illustration is a key communication skill that I keep in my own hands.
// - *Writing:* AI may improve clarity, but only after the paper structure and first draft have been written independently.

// == AI development practice
// + *Problem statement and mathematical formulation:* minimal to no AI involvement, so that the theoretical foundations are original and sound.
// + *Coding and implementation:* AI support is used mainly here, always based on the validated formulation from the previous step.
// + *Validation:* a modular, step-wise validation process in which every AI-assisted step is checked against the formulation.
// + *Manuscript preparation:* draft and structure are written without AI; AI is used for final proofreading only. Figures are made without AI to guarantee their reliability. AI may suggest references, but every source is read and verified personally.

