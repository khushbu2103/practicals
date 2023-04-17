#!/bin/bash

# Check if the user has provided an argument
if [ $# -ne 1 ]
then
    echo "Usage: $0 n"
    exit 1
fi

# Get the value of n from the first command-line argument
n=$1

# Initialize the sum variable to 0
sum=0

# Use a for loop to calculate the nth harmonic number
for (( i=1; i<=$n; i++ ))
do
    sum=$(echo "scale=2; $sum + 1/$i" | bc)
done

# Print the result
echo "The $n-th harmonic number is $sum"
