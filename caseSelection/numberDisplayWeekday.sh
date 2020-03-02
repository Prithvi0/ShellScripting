#!/bin/bash -x

# Read a weekday and Display the week day (Sunday to Saturday)

#reads a weekday number
read -p "Enter a number between 1 to 7: " weekday

#checks in the case statements and return the weekday of entered number
case $weekday in
      1 )
         weekday=Sunday
         ;;
      2 )
         weekday=Monday
         ;;
      3 )
         weekday=Tuesday
         ;;
      4 )
         weekday=Wednesday
         ;;
      5 )
         weekday=Thursday
         ;;
      6 )
         weekday=Friday
         ;;
      7 )
         weekday=Saturday
         ;;
      * )				#default statement
         echo "Invalid number"
         ;;
esac

