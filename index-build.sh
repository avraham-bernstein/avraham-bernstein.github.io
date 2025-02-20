#!/bin/bash -euv
# vim: fenc=utf-8 ff=unix ft=sh:

# Requirements:
#   apt: pandoc python3.12
#   pip: html5 Markdown markdown-extra 

pandoc index.md --metadata-file=index-metadata.yml -s --columns=96 \
    -f markdown_phpextra+backtick_code_blocks+header_attributes -t html5 -o index.html
