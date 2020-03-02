#!/bin/bash -x

# program to read 5 Random 3 Digit values and output the minimum and the maximum value.

# Generating 5 random numbers
randomNumber1=$(( RANDOM % 900 + 100 ))
randomNumber2=$(( RANDOM % 900 + 100 ))
randomNumber3=$(( RANDOM % 900 + 100 ))
randomNumber4=$(( RANDOM % 900 + 100 ))
randomNumber5=$(( RANDOM % 900 + 100 ))

#finding minimum value
minimum=$randomNumber1

# checks if randomNumber2 < minimum (randomNumber1), return the minimum value
if [ $randomNumber2 -lt $minimum ]
then
	minimum=$randomNumber2
fi
	# checks if randomNumber3 < minimum, return the minimum value
if [ $randomNumber3 -lt $minimum ]
then
	minimum=$randomNumber3
fi
# checks if num4 < minimum, return the minimum value
if [ $randomNumber4 -lt $minimum ]
then
	minimum=$randomNumber4
fi
# checks if randomNumber5 < minimum, return the minimum value
if [ $randomNumber5 -lt $minimum ]
then
	minimum=$randomNumber5
fi

#finding maximum value
maximum=$randomNumber1

# checks if randomNumber2 > maximum, return the maximum value
if [ $randomNumber2 -gt $maximum ]
then
	maximum=$randomNumber2
fi
# checks if randomNumber3 > maximum, return the maximum value
if [ $randomNumber3 -gt $maximum ]
then
	maximum=$randomNumber3
fi
# checks if randomNumber4 > maximum, return the maximum value
if [ $randomNumber4 -gt $maximum ]
then
	maximum=$randomNumber4
fi
# checks if randomNumber5 > maximum, return the maximum value
if [ $randomNumber5 -gt $maximum ]
then
	maximum=$randomNumber5
fi

# printing the minimum and maximum values
echo "minimum is $minimum, maximum is $maximum"
