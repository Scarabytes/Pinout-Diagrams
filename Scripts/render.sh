#! /bin/bash

# Accepts any filename or path with .svg extension
[[ $1 =~ ^(.*)(\.svg)$ ]]
file_name=${BASH_REMATCH[1]}

echo Rendering $file_name.svg
echo

inkscape -z -A "$file_name.pdf" "$file_name.svg"
inkscape -z -e "$file_name.png" -b "#ffffff" "$file_name.svg"
inkscape -z -e "$file_name Large.png" -b "#ffffff" -d 200 "$file_name.svg"
