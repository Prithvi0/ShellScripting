#!/bin/bash -x

# Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...

#reads a number
read -p "enter a number (1,10,100,1000) to know the unit place: " number

#checks the if statements and return the units place of a number
if [[ $number -gt 999 && $number -le 9999 ]]
then
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

elif [[ $number -gt 99 && $number -le 999 ]]
then
	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in unit's place"

	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in ten's place"

	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in hundredth's place"

elif [[ $number -gt 9 && $number -le 99 ]]
then
	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in unit's place"

	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in ten's place"

elif [[ $number -gt 0  && $number -le 9 ]]
then
	temp=$((number%10))
	number=$((number/10))
	echo "$temp is in unit's place"

else
	echo "Only Enter numbers like 1,10,100,1000"
fi
