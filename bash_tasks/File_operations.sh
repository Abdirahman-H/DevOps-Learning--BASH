#Write a script that creates a directory, navigates into it, 
#creates a file inside it, writes some text to the file, and then displays the contents of the file. 


#!/bin/bash

# Step 1: Create a directory named MyFolder
mkdir -p MyFolder

# Step 2: Navigate into the directory
cd MyFolder 

# Step 3: Create a file named myfile.txt
touch myfile.txt

# Step 4: Write some text to the file
echo "This is some sample text inside the file." > myfile.txt

# Step 5: Display the contents of the file
echo "Contents of myfile.txt:"
cat myfile.txt
