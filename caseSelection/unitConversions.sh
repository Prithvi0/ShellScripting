#!/bin/bash -x

#program that takes User Inputs and does Unit Conversion of different length units
#1. feet to inch
#2. feet to meter
#3. inch to feet
#4. meter to feet

echo "1. feet to inch 2. feet to meter 3. inch to feet 4. meter to feet"

# read the length value
read -p "Enter a length: " length

# value to check in case statement
read -p "Enter a value (1-4) to know the conversion: " value

#checks in the case statement and returns the unit conversion
case $value in
		1 )
			echo $length feet to inch is $(( length * 12 ))
			;;
		2 )
			echo $length feet to meter is $(echo "$length * 0.3048" | bc)
			;;
		3 )
			echo $length inch to feet is `expr "scale=1;$length/12" | bc`
			;;
		4 )
			echo $length meter to feet is $(echo "$length * 3.28" | bc)
			;;
		* )					#default statement
			echo "Please enter a value between 1 to 4"
			;;
esac
