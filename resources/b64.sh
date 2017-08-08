#!/bin/bash -e
################################################################################
# FILE: b64.sh
# USAGE: b64.sh INFILE [OUTFILE]
# DESCRIP: Converts input file to base64
# REQUIRES: openssl
################################################################################
# AUTHOR: Avraham DOT Bernstein AT gmail
# COPYRIGHT (c) 2014-17 Avraham Bernstein, Jerusalem ISRAEL
# LICENSE: https://opensource.org/licenses/Apache-2.0
# DATE: 2014-04-10: orig
# REV: 2017-08-08: change license to Apache
################################################################################

INFILE=$1
OUTFILE=$2

if [[ -z $OUTFILE ]]; then
    OUTFILE=$INFILE.b64;
elif [[ $OUTFILE == - ]]; then
    OUTFILE=/dev/stdout
fi

openssl enc -base64 -in $INFILE -out $OUTFILE

