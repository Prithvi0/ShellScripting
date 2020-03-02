#!/bin/bash -x

#command-line arguments
day=$1
month=$2
year=$3

tempYear=$(( year-((14-month))/12 ))
leapDay=$(( tempYear + tempYear/4-tempYear/100+tempYear/400 ))
tempMonth=$(( month + 12*(( ((14-month))/12))-2 ))
weekday=$(( ((day+ leapDay + 31*tempMonth/12 ))%7))

if [[ $weekday -eq 0 ]]
then
	echo Sunday
elif [[ $weekday -eq 1 ]]
then
	echo Monday
elif [[ $weekday -eq 2 ]]
then
	echo Tuesday
elif [[ $weekday -eq 3 ]]
then
	echo Wednesday
elif [[ $weekday -eq 4 ]]
then
	echo Thursday
elif [[ $weekday -eq 5 ]]
then
	echo Friday
elif [[ $weekday -eq 6 ]]
then
	echo Saturday
fi
