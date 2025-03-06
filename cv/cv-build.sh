#!/bin/bash -euv
# vim: fenc=utf-8 ff=unix ft=sh:

# Requirements:
#   apt: pandoc python3.12 wkhtmltodf 
#   pip: html5 Markdown markdown-extra pyexpander Pygments 

ROOT=AvrahamAbeBernstein-CV
HTML=$ROOT.html
MD=$ROOT.md
PDF=$ROOT.pdf

expander.py --eval 'is_pdf=False' -f $MD > cv.html.md
pandoc --verbose -f markdown_phpextra+backtick_code_blocks+header_attributes -t html5  -s --columns=96 \
	-o $HTML --metadata-file=cv.yml cv.html.md ../secure-photo.fn.md

expander.py --eval  'is_pdf=True' -f $MD > cv.pdf.md
pandoc -f markdown_phpextra+backtick_code_blocks --pdf-engine=wkhtmltopdf -s --columns=120 \
	-o $PDF --metadata-file=cv.yml cv.pdf.md
