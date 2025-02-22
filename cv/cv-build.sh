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
pandoc cv.html.md --metadata-file=cv-metadata.yml -s --columns=96 \
    -f markdown_phpextra+backtick_code_blocks+header_attributes -t html5 -o $HTML

expander.py --eval  'is_pdf=True' -f $MD > cv.pdf.md
pandoc cv.pdf.md --metadata-file=cv-metadata.yml -s --columns=120 \
    -f markdown_phpextra+backtick_code_blocks --pdf-engine=wkhtmltopdf -o $PDF
