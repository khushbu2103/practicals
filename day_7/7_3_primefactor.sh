#!/bin/bash

read -p "Enter a number: " n

declare -a factors  # declare an empty array to store the prime factors

# calculate the prime factors of n
for (( i=2; i<=n; i++ )); do
    while [ $((n%i)) -eq 0 ]; do
        factors+=("$i")  # append the factor to the array
        n=$((n / i))
    done
done

# display the prime factors
echo "Prime factors of $n: ${factors[@]}"

