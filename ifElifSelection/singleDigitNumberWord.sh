#!/bin/bash -x

#Read a single digit number and write the number in word

#reads a number
read -p "Enter a 1-digit number: " number

#checks the if-elif statements and returns the single digit number in word
if [ $number -eq 0 ]
then
	number=Zero
elif [ $number -eq 1 ]
then
	number=One
elif [ $number -eq 2 ]
then
	number=Two
elif [ $number -eq 3 ]
then
	number=Three
elif [ $number -eq 4 ]
then
	number=Four
elif [ $number -eq 5 ]
then
	number=Five
elif [ $number -eq 6 ]
then
	number=Six
elif [ $number -eq 7 ]
then
	number=Seven
elif [ $number -eq 8 ]
then
	number=Eight
elif [ $number -eq 9 ]
then
	number=Nine
else
	echo "Please Enter a single digit number"
fi
