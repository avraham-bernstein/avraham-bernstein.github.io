#!/bin/bash

ROOT=AvrahamBernstein-CV
COMMON_OPT="--email-obfuscation=references --read=markdown"
HTML_OPT="--write=html5 --output=$ROOT.html"
DOCX_OPT="--write=docx --output=$ROOT.docx"

pandoc $COMMON_OPT $HTML_OPT $ROOT.md
pandoc $COMMON_OPT $DOCX_OPT $ROOT.md

