echo " enter number: "
read n
factorial=1
for((i=1; i<=n; i++))
do
factorial=$[ $factorial * $i ]
done
echo "the factorial of $n is $factorial"
