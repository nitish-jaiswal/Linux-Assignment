#!/bin/bash

# Prompt user for two numbers
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

# Calculate sum
sum=$((num1 + num2))

# Print result
echo "The sum of $num1 and $num2 is: $sum"