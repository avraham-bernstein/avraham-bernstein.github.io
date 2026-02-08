#!/bin/bash -euv
# vim: fenc=utf-8 ff=unix ft=sh:

# Requirements:
#   apt: pandoc python3.12 wkhtmltodf 
#   pip: html5 Markdown markdown-extra pyexpander Pygments 

ROOT=obfuscation
HTML=$ROOT.html
MD=$ROOT.md
PDF=$ROOT.pdf
TMP_MD=$ROOT.tmp.md
YML=$ROOT.yml

expander.py -f $MD > $TMP_MD

pandoc --verbose -f markdown_phpextra+backtick_code_blocks+header_attributes -t html5  -s --columns=96 \
	-o $HTML --metadata-file=$YML $TMP_MD
	 
pandoc -f markdown_phpextra+backtick_code_blocks --pdf-engine=wkhtmltopdf -s --columns=128 \
	-o $PDF --metadata-file=$YML $TMP_MD
