read n

for (( i = 1; i <= $n; i++ )); do
	k=$i
	sp=`expr $n - $i`
	for (( j = 0; j < $sp; j++ )); do
		echo -n "   "
	done
	for (( j = 0; j < $i - 1; j++ )); do
		echo -n $k " "
		k=`expr $k + 1`
	done
	echo -n $k " "
	k=`expr $k - 1`
	for (( j = 0; j < $i - 1; j++ )); do
		echo -n $k " "
		k=`expr $k - 1`
	done
	for (( j = 0; j < $sp; j++ )); do
		echo -n "   "
	done
	echo 
done