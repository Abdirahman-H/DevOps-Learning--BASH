# Mission: Write a script that sorts all .txt files in a directory by their size,
#from smallest to largest, and displays the sorted list.


#!/bin/bash

# Define the directory to search
DIRECTORY="Arena"

# Check if the directory exists; if not, print an error and exit
if [ ! -d "$DIRECTORY" ]; then
    echo "Directory does not exist."
    exit 1
fi

# Find all .txt files in the directory (including subdirectories)
# List them with human-readable file sizes
# Sort the files by size (smallest to largest)
# Print the size and filename for each file
find "$DIRECTORY" -type f -name "*.txt" -exec ls -lh {} + | sort -k 5,5 -h | awk '{ print $5, $9 }'