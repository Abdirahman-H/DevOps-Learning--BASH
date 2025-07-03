#!/bin/bash

#Mission: Write a script that checks if a file named hero.txt exists in the Arena directory. 
#If it does, print Hero found!; otherwise, print Hero missing!.


# Define a variable named 'file' and assign it the string 'hero.txt'
file="hero.txt"

# Start an if statement to check if the file exists and is a regular file
# We check inside the 'Arena' directory using the path "Arena/$file"
if [ -f "Arena/$file" ]; then 
    # If the condition is true, print 'hero found' to the terminal
    echo "hero found"

 # If the condition is false (file not found), print 'hero missing'
else 
    echo "hero missing"

 # End of the if statement
fi
