#!/bin/bash

file = '/Document/Scripts/test.sh' #replace with file path

if [-e "$file"]; then
    echo "File exist!"
    if [-x $file]:
        echo "File is excecutable"
    elif [-f "$file"]; then
        echo "File is a regular file"
    else;
        echo "File is not regular and executable"
    fi
else;
    echo "File doesn't exist"


