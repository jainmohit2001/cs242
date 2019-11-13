while [[ 1 ]]; do
	read -p "Enter Your Password: " p
	len=`expr length $p`
	if [[ $len -lt 8 ]]; then
		echo "weaker password"
	else
		up=0
		low=0
		num=0
		for (( i = 0; i < $len; i++ )); do
			t1=$i
			t2=`expr $i + 1`
			if [[ ${p:$t1:t2} == [[:upper:]] ]]; then
				up=1
			fi
			if [[ ${p:$t1:t2} == [[:lower:]] ]]; then
				low=1
			fi
			if [[ ${p:$t1:t2} == [0-9]* ]]; then
				num=1
			fi
		done
		if [[ $up -eq 1 && $low -eq 1 && $num -eq 1 ]]; then
				exit
		else
				
				echo "weaker password" 	
		fi
	fi

done

