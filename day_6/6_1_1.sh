#n=7 p=5
 echo "Enter two numbers : "
 read n p

for ((i=1, pow=n; i<p; i++));
 do
 ((pow *= n))
echo $pow; 
done
  
