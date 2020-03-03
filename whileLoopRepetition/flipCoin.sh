#!/bin/bash -x

# Flip Coin till either Heads or Tails wins 11 times.

#let heads and tails be 0.
heads=0
tails=0

#runs until heads and tails reaches 11.
while [[ $heads -lt 11 && $tails -lt 11 ]]
do
	flips=$(( RANDOM % 2 ))		#generates 0 and 1 value.
	if [ $flips -eq 1 ]		# if value of flips=1, heads is incremented by 1.
	then
		((heads++))
	else
		((tails++))		#else tails+1
	fi
done

#print heads and tails
if [[ $heads -eq 11 ]]
then
	echo "heads win; heads=$heads, tails=$tails"
else
	echo "tails win; tails=$tails, heads=$heads"
fi
