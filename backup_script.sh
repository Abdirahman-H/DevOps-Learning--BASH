#Create a script that copies all .txt files from a specified directory to a backup directory. 
#If the backup directory doesn’t exist, the script should create it first. 

#!/bin/bash

#!/bin/bash

# Step 1: Ask user for the source directory
read -p "Enter the source directory: " SOURCE

# Step 2: Define the backup directory
BACKUP="backup"

# Step 3: Check if source directory exists
if [ ! -d "$SOURCE" ]; then
    echo "Source directory does not exist!"
    exit 1
fi

# Step 4: Create the backup directory if it doesn't exist
mkdir -p "$BACKUP"

# Step 5: Copy .txt files
cp "$SOURCE"/*.txt "$BACKUP"/ 2>/dev/null

# Step 6: Confirm the copy
echo "Backup complete. .txt files copied to '$BACKUP' directory."