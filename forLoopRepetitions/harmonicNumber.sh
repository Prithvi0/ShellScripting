#!/bin/bash -x

# program that takes a command-line argument n and prints the nth harmonic number.
#Harmonic Number is of the form 1+ 1/2 + 1/3 +...

#read a number
harmonicNumber=$1

number=0
#loops until the i reaches the number
for ((i=1; i<=$harmonicNumber; i++))
do
	number=`echo "scale=3;$number+1/$i" | bc`		#prints the nth harmonic number
done
echo $number
