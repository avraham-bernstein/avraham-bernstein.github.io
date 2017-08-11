#!/bin/bash -eux
# FILE: build.sh
# USAGE: build.sh [fast|hh]
# DESCRIP: build cv html & docx files using pandoc and jinja2


if [[ -z "$*" ]]; then
	MODE=""
else
	MODE="$1"; # fast|hh
fi


ROOT=cv
OUT=AvrahamBernstein-CV
TITLE=AvrahamBernstein:CV
LANG=en-US
TS=$(echo '{{DATETIME}}' | j2-cli.py)


WRITER=html5

# Do not enable J2 line statements or line comments due to conflict with pandoc ATX (#) headers.
# Change J2 comments to '{@ ... @}' due to conflict with pandoc '{#internal-link}' notation.

j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' -DWRITER=$WRITER -DTS=$TS defs.j2 head.html.j2 | trim-top.awk > tmp/head.html
j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' -DWRITER=$WRITER -DTS=$TS defs.j2 $ROOT.md | trim-top.awk > tmp/$WRITER.md

# Need to add head.html inside template

pandoc.sh $WRITER --standalone --toc --toc-depth=4 -M lang=$LANG -M pagetitle=$TITLE -H tmp/head.html tmp/$WRITER.md > tmp/1.html

# remove footnotes horizontal line

awk '
/^<section class="footnotes">$/,/^<hr \/>$/ { print "<section class=\"footnotes\">"; next }
{ print }
' tmp/1.html > tmp/2.html

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

' tmp/2.html > tmp/3.html

# to improve accessibility: h1,h2,h3,h4,h5,h6,li { tabindex: "0"; }

sed -r -e 's/(<)(h[1-6]|li)(>)/\1\2 tabindex="0"\3/g' tmp/3.html > $ROOT.html

if [[ "$MODE" == "fast" ]]; then exit $?; fi

# need to include head.html at the end of the HTML head section

j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' -DWRITER=$WRITER -DTS=$TS -DABBREV=eval:True defs.j2 head.html.j2 | trim-top.awk > tmp/head.html
j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' -DWRITER=$WRITER -DTS=$TS -DABBREV=eval:True defs.j2 $ROOT.md | trim-top.awk > tmp/$WRITER.md
pandoc.sh $WRITER --standalone --toc --toc-depth=4 -M lang=$LANG -M pagetitle=$TITLE -H tmp/head.html tmp/$WRITER.md > tmp/1.html

# remove footnotes horizontal line

awk '
/^<section class="footnotes">$/,/^<hr \/>$/ { print "<section class=\"footnotes\">"; next }
{ print }
' tmp/1.html > tmp/2.html

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

' tmp/2.html > tmp/3.html

# to improve accessibility: h1,h2,h3,h4,h5,h6,li { tabindex: "0"; }

sed -r -e 's/(<)(h[1-6]|li)(>)/\1\2 tabindex="0"\3/g' tmp/3.html > ${ROOT}-Abbrev.html


WRITER=docx
# TBD: docx supports TOC, but I don't know how to implement it from inside a pandoc template
# TBD: see options --reference-docx & --reference-odt

j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' -DWRITER=$WRITER -DTS=$TS defs.j2 $ROOT.md | trim-top.awk > tmp/$WRITER.md
pandoc.sh $WRITER --standalone -M lang=$LANG -M pagetitle=$TITLE tmp/$WRITER.md > $ROOT.$WRITER

j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' -DWRITER=$WRITER -DTS=$TS -DABBREV=eval:True defs.j2 $ROOT.md | trim-top.awk > tmp/$WRITER.md
pandoc.sh $WRITER --standalone -M lang=$LANG -M pagetitle=$TITLE tmp/$WRITER.md > ${ROOT}-Abbrev.$WRITER


cp -fp ${ROOT}.md xfer/$OUT.md.j2
cp -fp ${ROOT}.html xfer/$OUT.html
cp -fp ${ROOT}.html ../AvrahamBernsteinCV.html; # to support old bit.ly link
cp -f ${ROOT}-Abbrev.html xfer/${OUT}-Abbrev.html
cp -f ${ROOT}.docx xfer/$OUT.docx
cp -f ${ROOT}-Abbrev.docx xfer/${OUT}-Abbrev.docx
touch --reference=xfer/$OUT.html xfer/${OUT}-Abbrev.html xfer/${OUT}*.docx

cp -fp build.sh xfer/build.sh
cp -fp defs.j2 xfer/defs.j2
cp -fp head.html.j2 xfer/head.html.j2
cp -fp template.html5 xfer/template.html5


# if [[ "$MODE" == "hh" ]]; then
# HEADHUNTER
# fi

