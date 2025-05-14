#!/bin/bash

# Prompt the user for a number

read -p "Enter a number: " num

echo "You have entered the number $num"

# Check whether the number is positive, negative, or zero

if [ $num -gt 0 ]; then
    
	echo "The number is positive."

elif [ $num -lt 0 ]; then
    
	echo "The number is negative."

else
    
	echo "The number is zero."

fi


