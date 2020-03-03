
#a. Roll a die and find the number between 1 to 6
#b. Repeat the Die roll and find the result each time
#c. Store the result in a dictionary
#d. Repeat till any one of the number has reached 10 times
#e. Find the number that reached maximum times and the one that was for minimum times

declare -A arr
arr=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0)
for ((i=1; i<=6; i++))
do
	while(( ${arr[1]}<10 && ${arr[2]}<10 && ${arr[3]}<10 && ${arr[4]}<10 && ${arr[5]}<10 && ${arr[6]}<10 ))
	do
		die=$((RANDOM % 6 +1))
		if [ $die -eq 1 ]
		then
			arr[$die]=$((arr[$die]+1))
		elif [ $die -eq 2 ]
		then
			arr[$die]=$((arr[$die]+1))
		elif [ $die -eq 3 ]
		then
			arr[$die]=$((arr[$die]+1))
		elif [ $die -eq 4 ]
		then
			arr[$die]=$((arr[$die]+1))
		elif [ $die -eq 5 ]
		then
			arr[$die]=$((arr[$die]+1))
		elif [ $die -eq 6 ]
		then
			arr[$die]=$((arr[$die]+1))
		fi
	done
echo "Die[$i]: total[${arr[$i]}]"
done

#Finding minimum and maximum values
max=0
min=10
for n in {1..6}
do
	if((${arr[$n]}<$min))
	then
		min=${arr[$n]}
		die1=$n
	fi

	if((${arr[$n]}>$max))
   then
      max=${arr[$n]}
      die2=$n
   fi
done
echo "Minimum is Die[$die1]:$min, Maximum is Die[$die2]:$max"
