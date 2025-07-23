#!/bin/bash -euv
# vim: fenc=utf-8 ff=unix ft=sh:

# Requirements:
#   apt: pandoc python3.12 wkhtmltodf 
#   pip: html5 Markdown markdown-extra pyexpander Pygments 

ROOT=AvrahamAbeBernstein-CV-Lite
MD=$ROOT.md
HTML=$ROOT.html
PDF=$ROOT.pdf

LITE_MD=cv-lite.md
LITE_YML=cv-lite.yml

expander.py -f $MD > $LITE_MD

pandoc --verbose -f markdown_phpextra+backtick_code_blocks+header_attributes -t html5  -s --columns=96 \
	-o $HTML --metadata-file=$LITE_YML $LITE_MD
	 
pandoc -f markdown_phpextra+backtick_code_blocks --pdf-engine=wkhtmltopdf -s --columns=128 \
	-o $PDF --metadata-file=$LITE_YML $LITE_MD
