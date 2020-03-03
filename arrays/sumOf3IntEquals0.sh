#!/bin/bash -x

#Program to show Sum of three Integer adds to ZERO

read -p "Enter number of elements to print: " size
for(( iter=0; iter<$size; iter++ ))
do
	read -p "Enter $size elements: " num
	arr[$iter]=$num	#storing elements in an array
done
echo ${arr[@]}	#printing all the array elements

n=${#arr[@]}	#length of an array
for(( i=0; i< $n-2; i++ ))
do
	for(( j=$i+1 ; j< $n-1; j++ ))
	do
		for(( k= $j+1 ; k<$n; k++ ))
		do
			triplets=$(( arr[$i]+arr[$j]+arr[$k] ))
			if [[ $triplets -eq 0 ]]
			then
				echo "${arr[i]} ${arr[j]} ${arr[k]}"
			fi
		done
	done
done
