#Write a script that takes two numbers as input from the user and performs basic arithmetic operations 
#(addition, subtraction, multiplication, and division) and then displays all the answers of those operations in the terminal. 



#!/bin/bash

echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

sum=$((num1 + num2))
diff=$((num1 - num2))
prod=$((num1 * num2))

# For division, handle divide-by-zero error carefully
if [ "$num2" -ne 0 ]; then
    div=$((num1 / num2))
else
    div="undefined (division by zero)"
fi

echo "Sum: $sum"
echo "Difference: $diff"
echo "Product: $prod"
echo "Division: $div"