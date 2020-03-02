#!/bin/bash -x

# Read a Number 1, 10, 100 and 1000 and display unit, ten, hundredth and thousand place.

#read a number
read -p "enter a number (0 to 9999) to know their unit place: " number

#know the digit of a number
digit=${#number}

#checks in the case statements and prints the output.
case $digit in
	4 )
	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in unit's place"

	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in ten's place"

	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in hundredth's place"

	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in thousand's place"
	;;

	3 )
	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in unit's place"

	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in ten's place"

	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in hundredth's place"
	;;

	2 )
	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in unit's place"

	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in ten's place"
	;;

	1 )
	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in unit's place"
	;;

	* )			#default statement
	echo "Enter a number between 0 to 9999"
	;;
esac
