#!/bin/bash -x

#Enter 3 Numbers for arithmetic operation.
#find the one that is maximum and minimum.

#reads the inputs a, b, c
read -p "Enter value a: " a
read -p "Enter value b: " b
read -p "Enter value c: " c

#operations done
operation1=$(( a + (( b * c )) ))
operation2=$(( (( a % b )) + c ))
operation3=$(( c + (( a / b )) | bc ))
operation4=$(( (( a * b )) + c ))

#finding minimum value
#checks if operation2 is minimum and returns the minimum value
if [[ $operation2 -lt $operation1 && $operation2 -lt $operation3 && $operation2 -lt $operation4 ]]
then
	minimum=$operation2

#checks if operation3 is minimum and returns the minimum value
elif [[ $operation3 -lt $operation2 && $operation3 -lt $operation1 && $operation3 -lt $operation4 ]]
then
	minimum=$operation3

#checks if operation4 is minimum and returns the minimum value
elif [[ $operation4 -lt $operation1 && $operation4 -lt $operation2 && $operation4 -lt $operation3 ]]
then
	minimum=$operation4

#else returns operation1 as minimum value
else
	minimum=$operation1
fi

#finding maximum value
#checks if operation2 is maximum and returns the maximum value
if [[ $operation2 -gt $operation1 && $operation2 -gt $operation3 && $operation2 -gt $operation4 ]]
then
   maximum=$operation2

#checks if operation3 is maximum and returns the maximum value
elif [[ $operation3 -gt $operation2 && $operation3 -gt $operation1 && $operation3 -gt $operation4 ]]
then
   maximum=$operation3

#checks if operation4 is maximum and returns the maximum value
elif [[ $operation4 -gt $operation1 && $operation4 -gt $operation2 && $operation4 -gt $operation3 ]]
then
   maximum=$operation4

#else returns operation1 as maximum value
else
   maximum=$operation1
fi

#prints the minimum and maximum value
echo "minimum=$minimum, maximum=$maximum"
