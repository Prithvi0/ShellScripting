#!/bin/bash -x

#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77, etc and store them in an array.
count=0
for i in {0..100}
do
	temp=$i
	remainder=$(( $temp%10 ))
	unit=$(( $temp/10 ))
	if [[ $remainder -eq $unit && $remainder -ne 0 ]]
	then
		arr[((count++))]=$i				#adding elements in an array
	fi
done
echo ${arr[@]}							#printing all the array elements
