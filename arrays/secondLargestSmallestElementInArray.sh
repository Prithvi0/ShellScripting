#!/bin/bash -x

#Write a program that does the following
#a. Generates 10 Random 3 Digit number.
#b. Store this random numbers into a array.
#c. Then find the 2nd largest and the 2nd smallest element without sorting the array.

function SecondLargestSmallest() {
	largest=0
	smallest=1000

	# '$@' indicates whole array items
	for number in $@
	do
		if [[ $number -gt $largest ]]
		then
			largest2=$largest
			largest=$number
		elif [[ $number -ne $largest && $number -gt $largest2 ]]
		then
			largest2=$number
		fi

		if [[ $number -lt $smallest ]]
		then
			smallest2=$smallest
			smallest=$number
		elif [[ $number -ne $smallest && $number -lt $smallest2 ]]
		then
			smallest2=$number
		fi
	done
echo "Array elements: $@"
echo "second largest number is $largest2"
echo "second smallest number is $smallest2"
}

for((i=0; i<10; i++))
do
	randomNumbers=$((RANDOM % 900 + 100))
	numberArray[ ((i)) ]=$randomNumbers
done

#calling function
SecondLargestSmallest  ${numberArray[@]}
