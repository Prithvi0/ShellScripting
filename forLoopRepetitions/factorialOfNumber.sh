#!/bin/bash -x

# program to compute factorial of a number taken as input.

#reads a number
read -p "enter a number: " number

factorial=1
for(( i=1; i<=$number; i++ ))
do
	factorial=$(( factorial * i ))	#returns the multiplication of a number (n) till (n-1)
done
	echo "$number!=$factorial"	#prints the factorial output
