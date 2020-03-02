#!/bin/bash -x
# Read a weekday and Display the week day (Sunday, Monday,...)

#reads a weekday number
read -p "Enter a number between 1 to 7: " weekday

#checks the if statements and returns the weekday of the entered value
if [ $weekday -eq 1 ]
then
	weekday=Sunday
elif [ $weekday -eq 2 ]
then
	weekday=Monday
elif [ $weekday -eq 3 ]
then
	weekday=Tuesday
elif [ $weekday -eq 4 ]
then
	weekday=Wednesday
elif [ $weekday -eq 5 ]
then
	weekday=Thursday
elif [ $weekday -eq 6 ]
then
	weekday=Friday
elif [ $weekday -eq 7 ]
then
	weekday=Saturday
else
	echo "Invalid number"
fi

