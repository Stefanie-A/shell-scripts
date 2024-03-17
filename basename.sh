#!bin/bash

#Changing file(s) extensions
directory = '/path/directory'

for files in $directory/*HTML; do

    name = $(basename "$files" .HTML)

    new_files = "$directory/$name.txt"

    mv "$file" "$new_files"

done

echo "Files renamed"

