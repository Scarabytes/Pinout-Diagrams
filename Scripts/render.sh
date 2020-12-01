#! /bin/sh

inkscape -z -A "$1.pdf" "$1.svg"
inkscape -z -e "$1.png" -b "#ffffff" "$1.svg"
inkscape -z -e "$1 Large.png" -b "#ffffff" -d 200 "$1.svg"
