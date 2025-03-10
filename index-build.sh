#!/bin/bash -euv
# vim: fenc=utf-8 ff=unix ft=sh:

# Requirements:
#   apt: pandoc python3.12
#   pip: html5 Markdown markdown-extra pyexpander

expander.py -f index.md > index.html.md
pandoc --verbose -f markdown_phpextra+backtick_code_blocks+header_attributes -s --columns=96 \
	 -t html5 -o index.html --metadata-file=index.yml index.html.md secure-photo.fn.md
