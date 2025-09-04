#!/bin/bash -euv
# vim: fenc=utf-8 ff=unix ft=sh:

# Requirements:
#   apt: pandoc python3.12 wkhtmltodf 
#   pip: html5 Markdown markdown-extra pyexpander Pygments 

ROOT=AvrahamAbeBernstein-CV-Lite
MD=$ROOT.md
HTML=$ROOT.html
PDF=$ROOT.pdf

WIP_MD=cv-lite.md
WIP_YML=cv-lite.yml

expander.py -f $MD > $WIP_MD

pandoc --verbose -f markdown_phpextra+backtick_code_blocks+header_attributes -t html5  -s --columns=144 \
	-o $HTML --metadata-file=$WIP_YML $WIP_MD
	 
pandoc -f markdown_phpextra+backtick_code_blocks --pdf-engine=wkhtmltopdf -s --columns=144 \
	-o $PDF --metadata-file=$WIP_YML $WIP_MD
