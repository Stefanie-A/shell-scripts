#!bin/bash

#Changing file(s) extensions

for file in *.HTML; do
    name = $(basename "$file" .HTML)
    mv "$file" "$name.txt"

done
