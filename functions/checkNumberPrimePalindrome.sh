#!/bin/bash -x

# Take a number from user and check if the number is a Prime then show that its palindrome is also prime
#a. Write function check if number is Prime
#b. Write function to get the Palindrome
#c. Check if the Palindrome number is also prime

read -p "Enter a number: " number

function checkPrime () {
	n=0
	for ((i=2; i<=$number/2; i++))
	do
		if [ $(( number%i )) -eq 0 ]
		then
			n=1
		fi
	done

	if [[ $n -eq 1 || $number -le 1 ]]
	then
		echo "$number is not a prime number"
	else
		echo "$number is a prime number"
	fi
}
#calling the function to check for prime number.
checkPrime $number

function check_palindrome () {
	num=$number
	reverse=0

	while [[ $num -gt 0 ]]
	do
		remainder=$(( num % 10 ))
		reverse=$(( reverse*10+remainder ))
      		num=$(( $num / 10 ))
	done

	if [[ $number -eq $reverse ]]
	then
		echo "Number is a palindrome"
	else
		echo "Number is not a palindrome"
	fi
}
#function to check the prime number is also a palindrome
check_palindrome
