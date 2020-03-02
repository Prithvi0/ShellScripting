#!/bin/bash -x

#program to simulate a coin flip and print out Heads or Tails

#generating random numbers 0 and 1.
flip=$(( RANDOM % 2 ))

#checks if the flip is equals to 0 and returns Heads, otherwise Tails.
if [ $flip -eq 0 ]
then
	echo "Heads"
else
	echo "Tails"
fi
