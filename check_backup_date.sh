#!/bin/bash
directory="/home/xitest/backup_directory"

# check if the directory exists
if [ -d "$directory" ]; then
    # check if the directory is empty
    if [ -z "$(ls -A "$directory")" ]; then
        echo "$directory is empty"
    else
        for file in "$directory"/*; do
            if [ -f "$file" ]; then
                if [[ "$(stat -c %Y "$file")" -lt "$(date -d '2 days ago' +%s)" ]]; then
                    echo "Deleting file: $file"
                    rm -f "$file"
                else
                    echo "$file has been backed up two days ago."
                fi
            fi
        done
    fi
else
    echo "$directory does not exist."
fi
