#!/bin/bash

# Take input from user
echo "Enter a number:"
read N

# Find prime factors of N
for ((i=2; i*i<=N; i++))
do
    while [ $((N%i)) -eq 0 ]
    do
        echo $i
        N=$((N/i))
    done
done

# Check if any prime factor remains
if [ $N -gt 1 ]
then
    echo $N
fi
