#!/bin/bash -x

# program that takes a command-line argument n.
#prints a table of the powers of 2 that are less than or equal to 2^n till 256 is reached

number=$1
power=1
count=1
while [[ $count -le $((number)) && $power -le 256 ]]
do
	echo "2x$((count-1))=$power"
   power=$(( 2**$count ))
	(( count++ ))
done
