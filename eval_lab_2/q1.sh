t=$1
	num=$t
	if [[ $t == "" ]]; then
		echo "Please provide input in the command line itself"
		exit
	fi
len=`expr length $num`
	temp=0

	for (( i = 0; i < $len; i++ )); do
		if [[ "${num:${i}:${i+1}}" != [0-9]* ]]; then
			echo "Wrong Input. Please enter a Valid Number"
			temp=1
			break
			
		fi
	done
	
	if [[ $temp -eq 0 ]]; then
		if [[ "$(echo "$num" | rev )" == "$num" ]]; then
		#statements
			echo "Yes the number is the palindrome"
		else
			echo "Not a palindrome"	
		fi	
	fi