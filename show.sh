#!/bin/bash

# Process DocBook file and converts it to PDF
# Iván Chavero <ichavero@chavero.com.mx>


if [ ! -f $1.xml ]; then
    echo "$1.xml File not found!"
    exit
fi

echo "Processing $1.xml"
echo "Running XML Lint"
xmllint --xinclude $1.xml --output $1-lint.xml
echo "Converting to PDF"
/usr/bin/pandoc --from docbook --to latex --output $1.pdf $1-lint.xml
echo "Running evince viewer"
/usr/bin/evince $1.pdf
