#!/bin/bash -x

#generating 5 random 2 digit values.
# $((RANDOM % 90)) will generate 0 to 89 values and adding 10 will get till 99.
RandomNumber1=$(( RANDOM % 90 + 10 ))
RandomNumber2=$(( RANDOM % 90 + 10 ))
RandomNumber3=$(( RANDOM % 90 + 10 ))
RandomNumber4=$(( RANDOM % 90 + 10 ))
RandomNumber5=$(( RANDOM % 90 + 10 ))

#Adding all the random numbers.
sum=$((RandomNumber1+RandomNumber2+RandomNumber3+RandomNumber4+RandomNumber5))

#sum of all 5 generated random numbers is divided by 5 to get their average value.
average=$((sum/5))

#printing the sum and average values.
echo "sum: $sum; average: $average"
