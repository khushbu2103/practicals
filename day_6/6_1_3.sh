echo "enter number:" 
read n
for((i=2; i<=n/2; i++))
do
  if [ $((n%i)) -eq 0 ]
  then
    echo "$num is not a prime number."
    exit
fi
echo "$num is a prime number."
done


