#Mission: Write a script that monitors a directory for any changes (file creation, modification, or deletion) 
#and logs the changes with a timestamp.

#!/bin/bash

# Directory to monitor
DIR="./watched"
LOG="change_log.txt"

# Create directory if it doesn't exist
mkdir -p "$DIR"

# Log start message
echo "---- Monitoring started on $(date) ----" >> "$LOG"

# Start monitoring and log changes with timestamp
inotifywait -m -e create -e modify -e delete --format '%T %e %f' --timefmt '%Y-%m-%d %H:%M:%S' "$DIR" |
while read timestamp event file; do
    echo "[$timestamp] $event: $file" >> "$LOG"
    echo "[$timestamp] $event: $file"
done
