arr=()
 for i in ((1..10))
 do
 arr[i]=$((RANDOM % 999 + 100))
 done
 echo "random_number: ${arr[*]}"

largest=${arr[0]}
second_largest=${arr[0]}
smallest=${arr[o]}
second_largest=${arr[0]}

for i in ${arr[*]}
if [[ i<largest ]]
then
largest=second_largest
second_largest=
