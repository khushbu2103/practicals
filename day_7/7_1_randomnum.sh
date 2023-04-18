random_numbers=()

for i in {1..10};
do
  random_numbers+=($((RANDOM % 999 + 100)))
done
echo "Random numbers: ${random_numbers[*]}"

sorted_number=($(printf "%d\n"  "${random_numbers[@]}" | sort -n))
echo "sorted number: ${sorted_number[*]}"

second_smallest=${sorted_number[1]}
second_largest=${sorted_number[-2]}

echo "2nd smallest: $second_smallest"
echo "2nd largest: $second_largest"
