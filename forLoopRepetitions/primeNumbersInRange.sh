
#!/bin/bash -x

# program to take a range of number as input and output the Prime Numbers in that range.

#reads a number range
read -p "Enter a number range: " range

for((number=2; number<=$range; number++))
do
	temp=0
	# If num is divisible by any number between 2 and val, it is not prime
	for((i=2; i<=$number/2; i++))
	do
		if [ $(( number%i )) -eq 0 ]
		then
			temp=1
		fi
	done

	if [[ $temp -eq 0 ]]
	then
		prime="$prime $number"
	fi
done
	echo $prime
