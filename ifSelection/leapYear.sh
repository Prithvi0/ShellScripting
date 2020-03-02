#!/bin/bash -x

# program that takes a year as input and outputs the Year is a Leap Year or not a Leap Year.
# A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless divisible by 400.

# Every 4 years is a leap year except exactly divided by 100 (e.g. 2100, 2200)

read -p "Enter a 4-digit year: " year

# checking 4-digit year
if [ $year -ge 1000 ]
then
	if [ $year -le 9999 ]
	then

# check if the year is divisible by 4 and not divisible by 100 and also divisible by 400.
# Prints Leap year, else Not a Leap Year.
		if [ `expr $year % 4` -eq 0 ]
		then
			if [ `expr $year % 100` -ne 0 ]
			then
				if [ `expr $year % 400` -eq 0 ]
				then
					echo "$year is a Leap year"
				else
					echo "$year is not a Leap year"
				fi
			else
				echo "$year is a Leap year"
			fi
		else
			echo "$year is not a Leap year"
		fi
	else
		echo "Please enter a 4-digit year"
	fi
else
	echo "Please enter a 4-digit year"
fi
