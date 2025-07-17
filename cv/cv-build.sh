#!/bin/bash -euv
# vim: fenc=utf-8 ff=unix ft=sh:

# Requirements:
#   apt: pandoc python3.12 wkhtmltodf 
#   pip: html5 Markdown markdown-extra pyexpander Pygments 

ROOT=AvrahamAbeBernstein-CV
HTML=$ROOT.html
MD=$ROOT.md
PDF=$ROOT.pdf
LITE_PDF=$ROOT-Lite.pdf

expander.py --eval 'is_pdf=False;is_lite=False' -f $MD > cv.html.md
pandoc --verbose -f markdown_phpextra+backtick_code_blocks+header_attributes -t html5  -s --columns=96 \
	-o $HTML --metadata-file=cv.yml cv.html.md ../secure-photo.fn.md

expander.py --eval  'is_pdf=True;is_lite=False' -f $MD > cv.pdf.md
pandoc -f markdown_phpextra+backtick_code_blocks --pdf-engine=wkhtmltopdf -s --columns=120 \
	-o $PDF --metadata-file=cv.yml cv.pdf.md

expander.py --eval  'is_pdf=True;is_lite=True' -f $MD > cv-lite.pdf.md
pandoc -f markdown_phpextra+backtick_code_blocks --pdf-engine=wkhtmltopdf -s --columns=120 \
	-o $LITE_PDF --metadata-file=cv.yml cv-lite.pdf.md
