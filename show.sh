#!/bin/bash

echo "Processing $1.xml"
/usr/bin/pandoc --from docbook --to latex --output $1.pdf $1.xml
evince $1.pdf
