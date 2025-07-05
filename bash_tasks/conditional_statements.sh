 #Write a script that checks if a file exists and prints a message indicating whether it exists or not. 
 #If it exists, the script should also check if the file is readable, writable, or executable. 



#!/bin/bash


echo "enter the filename"
read file

if [ -e "$file" ]; then
    echo "file $file exists"

# Step 2: Check if it's readable
    if [ -r "$file" ]; then
        echo "The file is readable."
    else
        echo "The file is NOT readable."
    fi

    # Step 3: Check if it's writable
    if [ -w "$file" ]; then
        echo "The file is writable."
    else
        echo "The file is NOT writable."
    fi

    # Step 4: Check if it's executable
    if [ -x "$file" ]; then
        echo "The file is executable."
    else
        echo "The file is NOT executable."
    fi

else
    echo "File '$file' does not exist."
fi

