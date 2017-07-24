#!/bin/bash -eux
# FILE: cv2.sh
# USAGE: cv2.sh
# DESCRIP: build cv2.html & cv2.odt using pandoc and jinja2

ROOT=cv2
TITLE=AvrahamBernstein:CV
LANG=en-US

HEADHUNTER=""
ABBREV=0

J2_DEFINES=""
if [[ -n $HEADHUNTER ]]; then J2_DEFINES+=" -DHEADHUNTER=$HEADHUNTER"; fi
if [[ $ABBREV != 0 ]]; then J2_DEFINES+=" -DABBREV=eval:True"; fi

WRITER=html5

# need to include head.html at the end of the HTML head section
j2-cli.py $J2_DEFINES -DWRITER=$WRITER defs.j2 head.html.j2 | trim-top.awk > tmp/head.html

j2-cli.py $J2_DEFINES -DWRITER=$WRITER defs.j2 $ROOT.md | trim-top.awk > tmp/$WRITER.md

pandoc.sh $WRITER --standalone -M lang=$LANG -M pagetitle=$TITLE -H tmp/head.html tmp/$WRITER.md > tmp/1.html

# move TOC to the location of marker '%%TOC%%'
awk '

BEGIN							{ toc = ""; state = 0 }

/^<nav id="TOC">$/,/^<\/nav>$/	{ state = 1; toc = toc RS $0; next }
state == 0						{ print; next }

state == 1						{
									if($0 !~ /%%TOC%%/) {print; next}
									
									# fool sed accessibility script below, because every every list item in TOC already contains an anchor
									gsub("<li>","<li >",toc)
									print toc 
									
									state = 2
									next
								}
									
state == 2						{ print; next }

' tmp/1.html > tmp/2.html

# to improve accessibility: h1,h2,h3,h4,h5,h6,li { tabindex: "0"; }
sed -r -e 's/(<)(h[1-6]|li)(>)/\1\2 tabindex="0"\3/g' tmp/2.html > $ROOT.html

WRITER=docx
# TBD: odt has no TOC support, but docx does
# TBD: see options --reference-docx & --reference-odt

j2-cli.py $J2_DEFINES -DWRITER=$WRITER defs.j2 $ROOT.md | trim-top.awk > tmp/$WRITER.md

pandoc.sh $WRITER --standalone -M lang=$LANG -M pagetitle=$TITLE tmp/$WRITER.md > $ROOT.$WRITER

