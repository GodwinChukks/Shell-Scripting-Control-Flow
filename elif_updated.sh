#!/bin/bash

read -p "Enter a number: " num

# Check if input is a valid number
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input. Please enter an integer."
    exit 1
fi

echo "You have entered the number $num"

if [ "$num" -gt 0 ]; then
    echo "The number is positive."
elif [ "$num" -lt 0 ]; then
    echo "The number is negative."
else
    echo "The number is zero."
fi

