#!/bin/bash -x

start=1
stop=101
while [[ $((stop-start)) -ne 0 ]]
do
	temp=$(( $(( start+stop ))/2 ))
	read -p "Is the number less than $temp, y or n : " user_number
	if [ $user_number = "y" ]
	then
		stop=$temp
	fi
	if [ $user_number = "n" ]
	then
		start=$temp
	fi
done
echo your number is $temp
