#!/usr/bin/env bash
# Compile the TikZ graphical abstracts to SVG (classic colors) into images/papers/.
# Needs a TeX distribution with latex + dvisvgm (MiKTeX or TeX Live).
set -e
cd "$(dirname "$0")"
out=../../images/papers
tmp=$(mktemp -d)
for f in J*.tex; do
  n=${f%.tex}
  latex -interaction=nonstopmode -halt-on-error -output-directory="$tmp" "$f" >/dev/null
  for v in "$n"; do
    dvisvgm --no-fonts --exact-bbox --bbox=papersize -o "$out/$v.svg" "$tmp/$v.dvi" 2>/dev/null
  done
  echo "built $n"
done
rm -rf "$tmp"
