#!/bin/bash

mkdir -p Arena_Boss

touch Arena_Boss/file1.txt Arena_Boss/file2.txt Arena_Boss/file3.txt Arena_Boss/file4.txt Arena_Boss/file5.txt 

for file in Arena_Boss/*.txt; do
    num_lines=$(( RANDOM% 11 + 10 ))
    > "$file"
    for ((i=1; i<=num_lines; i++)); do
    echo "Line $i in $(basename "$file")" >> "$file"
    done
done

ls -lSr  Arena_Boss/*.txt

#create this dir if it doesn't exist
mkdir -p Victory_Archive

#loop through all .txt files in Arena_Boss
for file in Arena_Boss/*.txt; do

#check if the file contains the word victory
if grep -q "Victory" "$file"; then
        echo "Victory found in $file"
        # Move the file to Victory_Archive
        mv "$file" Victory_Archive/
    else
        echo "Victory not found in $file"
    fi
done