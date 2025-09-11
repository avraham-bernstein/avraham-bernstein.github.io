#!/bin/bash -euv
# vim: fenc=utf-8 ff=unix ft=sh:

# Requirements:
#   apt: pandoc python3.12 wkhtmltodf 
#   pip: html5 Markdown markdown-extra pyexpander Pygments 

ROOT=AvrahamAbeBernstein-CV-Lite
MD=$ROOT.md
HTML=$ROOT.html
PDF=$ROOT.pdf

YML=cv-lite.yml
TMP_MD=cv-lite.md

expander.py -f $MD > $TMP_MD

pandoc --verbose -f markdown_phpextra+backtick_code_blocks+header_attributes -t html5  -s --columns=144 \
	-o $HTML --metadata-file=$YML $TMP_MD
	 
pandoc -f markdown_phpextra+backtick_code_blocks --pdf-engine=wkhtmltopdf -s --columns=144 \
	-o $PDF --metadata-file=$YML $TMP_MD
