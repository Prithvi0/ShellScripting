#!/bin/bash -x

# Read a single digit number and write the number in word using Case

#reads a number
read -p "Enter a 1-digit number: " number

#checks in the case statement and prints the output based on the entered value
case $number in
		0 )
			number=Zero
			;;
		1 )
			number=One
			;;
		2 )
			number=Two
			;;
		3 )
			number=Three
			;;
		4 )
			number=Four
			;;
		5 )
			number=Five
			;;
		6 )
			number=Six
			;;
		7 )
			number=Seven
			;;
		8 )
			number=Eight
			;;
		9 )
			number=Nine
			;;
		* )
			echo "Please Enter a single digit number"
			;;
esac
