#!/bin/bash -euv
# vim: fenc=utf-8 ff=unix ft=sh:

# Requirements:
#   apt: pandoc python3.12
#   pip: html5 Markdown markdown-extra pyexpander

ROOT=index
HTML=$ROOT.html
MD=$ROOT.md
TMP_MD=$ROOT.tmp.md
YML=$ROOT.yml
PDF=AvrahamAbeBernstein-HomePage.pdf

expander.py -f $MD > $TMP_MD

pandoc --verbose -f markdown_phpextra+backtick_code_blocks+header_attributes \
-s --columns=96 -t html5 -o $HTML --metadata-file=$YML $TMP_MD

pandoc -f markdown_phpextra+backtick_code_blocks+header_attributes --pdf-engine=wkhtmltopdf \
-s --columns=144 -o $PDF --metadata-file=$YML $TMP_MD
