#!/bin/bash -x

#Program to store all the Prime Factors of a number into an array and display the output.

#read a number to find its prime factors
read -p "Enter a number to find Prime Factors: " number

primeFactor=$number
count=0
for((x=1; x<=$((number/2)); x++))
do
	stop=0
	if [[ $x -eq 1 ]]
	then
		stop=1
	fi
	for((i=2;i<=$((x/2));i++))
	do
		if [[ $(( x%i )) -eq 0 ]]	#if the number's remainder equals to 0
		then
			stop=1
		fi
	done
	if [[ $stop -eq 0 ]]
	then
		if [[ $((primeFactor % x)) -eq 0 ]]
		then
			primeFactor=$((primeFactor/x))					#quotient is again divided
			arr[((count++))]="$x"											   #prints the obtained factor
			((x--))
		fi
	fi
done
echo ${arr[@]}
