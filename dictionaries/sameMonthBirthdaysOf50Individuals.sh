#!/bin/bash -x

#Program to generate a birth month of 50 individuals between the year 92 & 93.
#Find all the individuals having birthdays in the same month. Store it to finally print.

# dictionary declaration
declare -A birthRecord
for((i=1; i<=50; i++)) #looping through 50 individuals values
do
		m=$((RANDOM%12 + 1))		#month=m; generating 12 random birth month values till the count of all the months reaches 50
		if [ $m -eq 1 ]
		then
			birthRecord[$m]=$((birthRecord[$m]+1))
		elif [ $m -eq 2 ]
		then
			birthRecord[$m]=$((birthRecord[$m]+1))
		elif [ $m -eq 3 ]
		then
			birthRecord[$m]=$((birthRecord[$m]+1))
		elif [ $m -eq 4 ]
      then
			birthRecord[$m]=$((birthRecord[$m]+1))
		elif [ $m -eq 5 ]
      then
			birthRecord[$m]=$((birthRecord[$m]+1))
		elif [ $m -eq 6 ]
      then
			birthRecord[$m]=$((birthRecord[$m]+1))
		elif [ $m -eq 7 ]
      then
			birthRecord[$m]=$((birthRecord[$m]+1))
		elif [ $m -eq 8 ]
      then
			birthRecord[$m]=$((birthRecord[$m]+1))
		elif [ $m -eq 9 ]
      then
			birthRecord[$m]=$((birthRecord[$m]+1))
		elif [ $m -eq 10 ]
      then
			birthRecord[$m]=$((birthRecord[$m]+1))
		elif [ $m -eq 11 ]
      then
			birthRecord[$m]=$((birthRecord[$m]+1))
		elif [ $m -eq 12 ]
      then
			birthRecord[$m]=$((birthRecord[$m]+1))
		fi
done

#Storing the values of the individuals having the same birth month in a dictionary
for((month=1; month<=12; month++))
do
	if [[ "${birthRecord[$month]}" -eq "" ]]
	then
		echo "Month[$month]:0"
	else
		echo "Month[$month]:${birthRecord[$month]}"
	fi
done
