#Mission: Combine what you've learned! Write a script that:

# Create the directory 'battlefield' if it doesn't already exist
mkdir -p battlefield 

# Create three empty files inside the 'battlefield' directory
touch battlefield/knight.txt battlefield/sorcerer.txt battlefield/rogue.txt

# Set a variable 'file' with the value 'knight.txt'
file=knight.txt

# Check if the file 'knight.txt' exists inside 'battlefield'
if [ -f "battlefield/$file" ]; then
    echo "file exists"   # Print confirmation that the file exists
   
    # Create the 'Archive' directory if it doesn't exist yet
    mkdir -p Archive

     # Move 'knight.txt' from 'battlefield' to 'Archive'
    mv battlefield/$file Archive/

else 
    echo "file does not exist"  # Print message if the file is missing

fi

# Print a heading to indicate the contents of the 'battlefield' directory
echo "content of battlefield"
ls -l battlefield 

# Print a heading to indicate the contents of the 'archive' directory
echo "content of archive"
ls -l archive
