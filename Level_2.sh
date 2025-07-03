#!/bin/bash

# Mission: Create a script that outputs the numbers 1 to 10, one number per line.

# Make the counter variable to 1
count=1

# Start a loop that runs while count is less than or equal to 10
while [ $count -le 10 ]; do 


    echo "$count" # Print the current value of count
((count++)) # Increment the count variable by 1

done # End of the while loop
