#Mission: Create a script that copies all .txt files from the Arena directory to a new directory called Backup.

#!/bin/bash

# Step 1: Create a directory called 'Backup' if it doesn't already exist
mkdir -p Backup

# Step 2: Copy all .txt files from the 'Arena' directory into 'Backup'
cp Arena/*.txt Backup/

# Optional: Print a message to confirm the operation
echo "All .txt files have been copied from Arena to Backup."