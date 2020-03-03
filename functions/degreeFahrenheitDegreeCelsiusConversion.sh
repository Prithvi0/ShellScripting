#!/bin/bash -x

# find degF or degC based on their Conversion Selection.
#Use Case Statement and ensure that the inputs are within the Freezing Point (0°C / 32°F ) and
#The Boiling Point of Water ( 100°C / 212°F )
#a. degF = (degC * 9/5) + 32
#b. degC = (degF – 32) * 5/9

read -p "enter 0 for converting Degree temp in Fahrenheit and 1 in Celsius: " unit

#function checks and convert the Degree temp in Fahrenheit for 0 case input and 1 to Celsius
function TemperatureConversion() {
	read -p "enter temperature: " temp
	case $1 in
		0 )
		if [[ $temp -ge 32 && $temp -le 212 ]]
		then
			temp=`echo "scale=2;(($temp*9/5))+32" | bc`
		fi
		;;

		1 )
		if [[ $temp -ge 0 && $temp -le 100 ]]
		then
			temp=`echo "scale=2;(( $temp - 32 )) * 5/9" | bc`
		fi
		;;

		* )
			echo "Enter 0 or 1"
		;;
	esac
}
#calling function
TemperatureConversion $unit
