#!/bin/bash -x

ROOT=AvrahamBernstein-CV
COMMON_OPT="--email-obfuscation=references --read=markdown"
HTML_OPT="$COMMON_OPT --write=html5 --output=$ROOT.html"
DOCX_OPT="$COMMON_OPT --write=docx --output=$ROOT.docx --variable=geometry:a4paper --variable=geometry:portrait"

pandoc $HTML_OPT $ROOT.md
pandoc $DOCX_OPT $ROOT.md
