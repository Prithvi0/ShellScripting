#!/bin/bash -x

# program that takes a input and determines if the number is a prime.

read -p "Enter a number: " number

for ((i=2; i<=$number/2; i++))
do
	if [ $(( number % i )) -eq 0 ]
	then
		echo "$number is not a prime number."
	fi
done

if [[ $(( number % i )) -eq 1 || $number -le 1 ]]
then
	echo "$number is not a prime number."
else
	echo "$number is a prime number."
fi
