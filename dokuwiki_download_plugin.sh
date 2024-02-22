#!/bin/bash
curl -L "$1" > "$2".zip
unzip "$2".zip -d "$2"

folder=$(ls -d "$2"/*/ | head -1)

mv -v "$folder"/* "$2"
rm -r "${folder:?}"
rm "$2".zip