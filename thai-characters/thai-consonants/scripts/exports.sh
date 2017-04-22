#!/bin/bash
mkdir ./dist
for path in ./data/*/*-sheet.svg
do
    consonant=${path:9:1}
    mkdir "./dist/$consonant/"
    inkscape -f $path -e "./dist/$consonant/$consonant-sketchpad.png" --export-area-page
done
