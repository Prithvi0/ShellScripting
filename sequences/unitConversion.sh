#!/bin/bash -x

# 1foot = 12inches
foot=12
# 42inches = ? feet
echo 42inches=`expr "scale=1;42/$foot" | bc`feets

# 1foot = 0.3048m
#length=60feet; breadth=40feet
lengthInMeters=`expr "60*0.3048" | bc`
breadthInMeters=`expr "40*0.3048" | bc`
rectangularPlotInMeters=`expr "$lengthInMeters*$breadthInMeters" | bc`

# Area of 25 rectangular plots in acres
#1acre = 4047 square meters
area=`echo "scale=2; (($rectangularPlotInMeters/4047*25))" |bc`acres
