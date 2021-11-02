#!/bin/bash -eu
# vim:fenc=latin1 ff=unix ft=sh:
# FILE: pandoc.sh
# USAGE: pandoc.sh READER_FMT WRITER_FMT DATA_FILES
# REQUIRES: pandoc >= 2.10
# DATE: 2021-11-02
# COPYRIGHT (c) 2021 Avraham Bernstein, Israel. All rights reserved.
# LICENSE: https://spdx.org/licenses/CC-BY-4.0.html "Creative Commons Attribution 4.0 International"

if [[ $# -lt 3 ]]; then
    echo 'E: pandoc.sh: not enough args' > /dev/stderr
    exit 1
fi

READER=$1
WRITER=$2
shift 2
SRC_FILES="$*"

case $READER in
    m|mdx)
        READER='markdown_phpextra'
        ;;
    cmx)
        READER='commonmark_x'
        ;;
esac

case $WRITER in
    cmx)
        WRITER='commonmark_x'
        ;;
    h|html|html5)
        WRITER='html5'
        ;;
esac

OPT=''

if [[ $WRITER == html5 ]]; then
    OPT+=' --standalone'
fi

if [[ -f $WRITER.templ ]]; then
    OPT+=" --template=$WRITER.templ"
fi

X=''; # extensions

if [[ $WRITER == html5 ]]; then
    X+=+raw_html
fi

# blocks

if [[ $READER != commonmark_x ]]; then
    X+=+backtick_code_blocks; # GFM
    X+=+blank_before_blockquote
    X+=+blank_before_header
    X+=+line_blocks
    X+=+space_in_atx_header
fi

X+=+yaml_metadata_block

# footnotes
X+=+footnotes
if [[ $READER != commonmark_x ]]; then
    X+=+inline_notes
fi

# html
X+=+fenced_divs
if [[ $READER != commonmark_x ]]; then
    X+=+fenced_code_attributes
    X+=+header_attributes
    X+=+inline_code_attributes
    X+=+link_attributes
    X+=+native_divs
    X+=+native_spans
fi
X+=+smart
if [[ $WRITER == html5 ]]; then
    OPT+=' --html-q-tags'
fi

# links
X+=+ascii_identifiers
X+=+autolink_bare_uris
if [[ $READER != commonmark_x ]]; then
    X+=+shortcut_reference_links
fi

# lists
X+=+definition_lists
if [[ $READER != commonmark_x ]]; then
    X+=+example_lists
    X+=+startnum
fi
X+=+fancy_lists

# math
X+=+tex_math_dollars

# tables
if [[ $READER != commonmark_x ]]; then
    X+=+multiline_tables
    X+=+table_captions
fi
X+=+pipe_tables; # GFM

# text format attribs
if [[ $READER != commonmark_x ]]; then
    X+=+all_symbols_escapable
    X+=+escaped_line_breaks
    X+=+intraword_underscores
fi
X+=+strikeout
X+=+subscript
X+=+superscript

# misc
X+=+implicit_header_references
X+=+implicit_figures

# reader opts
OPT+=' --preserve-tabs'
OPT+=' --file-scope'

# writer opts
# OPT+=' --ascii'; # this opt blocks UTF-8 including html-q-tags
OPT+=' --columns=96'
OPT+=' --markdown-headings=atx'
OPT+=' --email-obfuscation=references'
OPT+=' --highlight-style=tango'
OPT+=' --mathml'
OPT+=' --section-divs'
# OPT+=' --number-sections'
# OPT+=' --number-offset=1'

pandoc --read=$READER${X} --write=$WRITER $OPT $SRC_FILES
