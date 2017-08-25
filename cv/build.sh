#!/bin/bash -eux
# FILE: build.sh
# USAGE: build.sh [fast|hh]
# DESCRIP: build cv html & docx files using pandoc and jinja2
# PREREQ: bin/j2-cli.py bin/pandoc.sh bin/trim-top.awk

# Do not enable J2 line statements or line comments due to conflict with pandoc ATX (#) headers.
# Change J2 comments to '{@ ... @}' due to conflict with pandoc '{#internal-link}' notation.
# The current j2-cli.py implementation is based upon python2 which has poor unicode support which cannot properly process the pandoc html5 template.

if [[ -z "$*" ]]; then
	MODE=""
else
	MODE="$1"; # fast|hh
fi

ROOT=cv
OUT=AvrahamBernstein-CV
HOME_URL=http://purl.org/Avraham.Bernstein

TS=$(date --utc +%Y-%m-%dT%H:%M:%SZ)
HOME_UUID=$(uuid -v5 ns:URL $HOME_URL)
VCARD3_UUID=$(uuid -v5 ns:URL $HOME_URL/vcard3)
VCARD4_UUID=$(uuid -v5 ns:URL $HOME_URL/vcard4)

echo "{% set TS = '$TS' %}" > tmp/ts.j2
echo "{% set HOME_UUID = '$HOME_UUID' %}" >> tmp/ts.j2
echo "{% set VCARD3_UUID = '$VCARD3_UUID' %}" >> tmp/ts.j2
echo "{% set VCARD4_UUID = '$VCARD4_UUID' %}" >> tmp/ts.j2

for v in 3 4
do
	f=vcard${v}.vcf.j2
	g=tmp/vcard${v}.vcf
	j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' tmp/ts.j2 defs.j2 $f | trim-top.awk > $g
done

WRITER=html5

for f in head.html metadata.yaml
do
	g=tmp/$f
	if [[ ! -f $f ]]; then f=$f.j2; fi
	if [[ ! -f $f ]]; then continue; fi
	j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' -DWRITER=$WRITER tmp/ts.j2 defs.j2 $f | trim-top.awk > $g
done

j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' -DWRITER=$WRITER tmp/ts.j2 defs.j2 $ROOT.md | trim-top.awk > tmp/$WRITER.md
pandoc.sh $WRITER --standalone --toc -H tmp/head.html tmp/metadata.yaml tmp/$WRITER.md > tmp/1.html

# remove footnotes: hr + fn[34]

awk '
/^<section class="footnotes">$/,/^<hr \/>$/ { print "<section class=\"footnotes\">"; next }
/^<li id="fn[34]"/ { next }
{ print }
' tmp/1.html > tmp/2.html

# renumber footnotes: 3,4,5

sed -r \
-e 's/<a href="#fn3" class="footnoteRef" id="fnref3"><sup>3/<a href="#fn2" class="footnoteRef"><sup>2/' \
-e 's/<a href="#fn4" class="footnoteRef" id="fnref4"><sup>4/<a href="#fn2" class="footnoteRef"><sup>2/' \
-e 's/<a href="#fn5" class="footnoteRef" id="fnref5"><sup>5/<a href="#fn3" class="footnoteRef" id="fnref3"><sup>3/' \
-e 's/<a href="#fnref2">/<a href="#contact-info-links">/' \
-e 's/<a href="#fnref5">/<a href="#fnref3">/' \
-e 's/<li id="fn5">/<li id="fn3">/' \
tmp/2.html > tmp/3.html

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

' tmp/3.html > tmp/4.html

# to improve accessibility: h1,h2,h3,h4,h5,h6,li,p { tabindex: "0"; }

sed -r -e 's/(<)(h[1-6]|li|p)(>)/\1\2 tabindex="0"\3/g' -e 's/<li id/<li tabindex="0" id/g' tmp/4.html > $ROOT.html

if [[ "$MODE" == "fast" ]]; then exit $?; fi


for f in head.html metadata.yaml
do
	g=tmp/$f
	if [[ ! -f $f ]]; then f=$f.j2; fi
	if [[ ! -f $f ]]; then continue; fi
	j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' -DWRITER=$WRITER -DABBREV=eval:True tmp/ts.j2 defs.j2 $f | trim-top.awk > $g
done

j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' -DWRITER=$WRITER -DABBREV=eval:True tmp/ts.j2 defs.j2 $ROOT.md | trim-top.awk > tmp/$WRITER.md
pandoc.sh $WRITER --standalone --toc -H tmp/head.html tmp/metadata.yaml tmp/$WRITER.md > tmp/1.html

# remove footnotes: hr + fn[34]

awk '
/^<section class="footnotes">$/,/^<hr \/>$/ { print "<section class=\"footnotes\">"; next }
/^<li id="fn[34]"/ { next }
{ print }
' tmp/1.html > tmp/2.html

# renumber footnotes: 3,4 [abbrev version has no 5]

sed -r \
-e 's/<a href="#fn3" class="footnoteRef" id="fnref3"><sup>3/<a href="#fn2" class="footnoteRef"><sup>2/' \
-e 's/<a href="#fn4" class="footnoteRef" id="fnref4"><sup>4/<a href="#fn2" class="footnoteRef"><sup>2/' \
-e 's/<a href="#fnref2">/<a href="#contact-info-links">/' \
tmp/2.html > tmp/3.html

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

' tmp/3.html > tmp/4.html

# to improve accessibility: h1,h2,h3,h4,h5,h6,li,p { tabindex: "0"; }

sed -r -e 's/(<)(h[1-6]|li|p)(>)/\1\2 tabindex="0"\3/g' -e 's/<li id/<li tabindex="0" id/g' tmp/4.html > ${ROOT}-Abbrev.html


WRITER=docx
# TBD: docx supports TOC, but I don't know how to implement it from inside a pandoc template
# TBD: see options --reference-docx & --reference-odt

for f in metadata.yaml
do
	g=tmp/$f
	if [[ ! -f $f ]]; then f=$f.j2; fi
	if [[ ! -f $f ]]; then continue; fi
	j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' -DWRITER=$WRITER tmp/ts.j2 defs.j2 $f | trim-top.awk > $g
done

j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' -DWRITER=$WRITER tmp/ts.j2 defs.j2 $ROOT.md | trim-top.awk > tmp/$WRITER.md
pandoc.sh $WRITER --standalone tmp/metadata.yaml tmp/$WRITER.md > $ROOT.$WRITER

for f in metadata.yaml
do
	g=tmp/$f
	if [[ ! -f $f ]]; then f=$f.j2; fi
	if [[ ! -f $f ]]; then continue; fi
	j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' -DWRITER=$WRITER -DABBREV=eval:True tmp/ts.j2 defs.j2 $f | trim-top.awk > $g
done

j2-cli.py -Ecomment_start_string='{@' -Ecomment_end_string='@}' -DWRITER=$WRITER -DABBREV=eval:True tmp/ts.j2 defs.j2 $ROOT.md | trim-top.awk > tmp/$WRITER.md
pandoc.sh $WRITER --standalone tmp/metadata.yaml tmp/$WRITER.md > ${ROOT}-Abbrev.$WRITER


cp -fp $ROOT.md xfer/$OUT.md.j2
cp -fp $ROOT.html xfer/$OUT.html
cp -fp $ROOT.html ../AvrahamBernsteinCV.html; # to support an old link: bit.ly/avrhm-cv
cp -fp ${ROOT}-Abbrev.html xfer/${OUT}-Abbrev.html
cp -fp $ROOT.docx xfer/$OUT.docx
cp -fp ${ROOT}-Abbrev.docx xfer/${OUT}-Abbrev.docx
touch --reference=$ROOT.html xfer/${OUT}*.html xfer/${OUT}*.docx tmp/*.vcf
cp -fp *.vcf.j2 xfer
cp -fp tmp/vcard3.vcf ../AvrahamBernstein-3.0.vcf
cp -fp tmp/vcard4.vcf ../AvrahamBernstein-4.0.vcf

cp -fp build.sh xfer/build.sh
cp -fp defs.j2 xfer/defs.j2
cp -fp head.html.j2 xfer/head.html.j2
cp -fp template.html5 xfer/template.html5
