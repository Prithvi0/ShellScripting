#!/bin/bash -x
read -p 'Enter value of variable a: ' a
read -p 'Enter value of variable b: ' b
read -p 'Enter value of variable c: ' c
echo `expr "scale=2;(( $a+(($b*$c)) ))" | bc`
echo `expr "scale=2;(( $c+(($a/$b)) ))" | bc`
echo `expr "scale=2;(( (($a%$b))+$c ))" | bc`
echo `expr "scale=2;(( (($a*$b))+$c ))" | bc`
