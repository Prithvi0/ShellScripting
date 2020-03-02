#!/bin/bash -x

#program that takes a command-line argument n.
#prints a table of the powers of 2 that are less than or equal to 2^n.

#read a number
read -p "enter a number to print powers of 2 till that range: " number

power=1
#loop till the i reaches the value of number.
for ((i=1; i<=number+1; i++))
do
	echo "2x$((i-1))=$power"
	power=$((2**$i))		#return powers of 2
done
