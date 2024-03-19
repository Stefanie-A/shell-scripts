#!bin/bash

Log_dir = 'var/log/myapp'
Log_rotation = 5

if [ ! -d "$Log_dir"]; then
    echo "Log directory doesn't exist!"
    exit 1
fi

cd "$Log_dir" || exit

for ((i= $Log_rotation; i > 1; i--)); do
    if [ -f "myapp.log.$((i-1)).gz" ]; then
        mv "myapp.log.$((i-1)).gz" "myapp.log.$i.gz"
    fi
done

if [ -f "myapp.log" ]; then
    mv "myapp.log" "myapp.log.1"
fi
touch myapp.log

# Compress old logs
if [ -f "myapp.log.5" ]; then
    gzip -f "myapp.log.5"
fi

    