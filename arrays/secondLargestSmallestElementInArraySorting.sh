#!/bin/bash -x

function secondLargestSmallestSort () {
	for ((i=0; i <= $((${#arr[@]} - 2)); i++))
	do
		for ((j=$((i + 1)); j <= ((${#arr[@]} - 1)); j++))
		do
			if [[ ${arr[i]} -gt ${arr[j]} ]]
			then
				temp=${arr[i]}
				arr[i]=${arr[j]}
				arr[j]=$temp
			fi
		done
	done
echo ${arr[@]}
echo "2nd Largest number: ${arr[1]}"
echo "2nd Smallest number: ${arr[-2]}"
}
arr=($(for i in {0..9}; do echo $((RANDOM%900 +100)); done))
secondLargestSmallestSort ${arr[@]}
