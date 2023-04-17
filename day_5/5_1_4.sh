dig1=$(( $RANDOM % 99 + 10 ));
dig2=$(( $RANDOM % 99 + 10 ));
dig3=$(( $RANDOM % 99 + 10 ));
dig4=$(( $RANDOM % 99 + 10 ));
dig5=$(( $RANDOM % 99 + 10 ));
sum=$(( dig1+dig2+dig3+dig4+dig5 ));
average=$(( sum/5 ));
echo $sum
echo $average

