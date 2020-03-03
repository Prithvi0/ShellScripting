#!/bin/bash -x

#function to check if the number is Palindrome
function palindrome() {
	read -p "Enter a number: " number1
	read -p "Enter number's reverse: " number2
	reverse=0

	while [[ $number1 -gt 0 ]]
	do
		remainder=$(( number1 % 10 ))
		reverse=$(( reverse*10+remainder ))
		number1=$(( number1 / 10 ))
	done

	if [[ $number2 -eq $reverse ]]
	then
     echo "Both numbers are palindrome"
	else
		echo "Both numbers are not palindrome"
	fi
}
#calling the function
palindrome
