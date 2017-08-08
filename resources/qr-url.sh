#!/bin/bash -eu
################################################################################
# FILE: qr-url.sh
# USAGE: qr-url.sh URL OUTFILE
# DESCRIP: generates qrcode.png from URL
# REQUIRES: qrencode
################################################################################
# AUTHOR: Avraham DOT Bernstein AT gmail
# COPYRIGHT (c) 2017 Avraham Bernstein, Jerusalem ISRAEL
# LICENSE: https://opensource.org/licenses/Apache-2.0
# DATE: 2017-08-08: orig
################################################################################

URL=$1
OUTFILE=$2

# -i: case insensitive
# -m 3: margin width 3
# -l M: level medium
qrencode -i -m 3 -l M -o $OUTFILE $URL

