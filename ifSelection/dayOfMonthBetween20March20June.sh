#!/bin/bash -x

# program to take day and month from the command line.
# print true if day of month is between March 20 and June 20, false otherwise.

# take day and month from the command line.
day=$1
month=$2

# day must be from 20 and march has 31 days, so, 20 to 31 days as input; month march (3); month=3
if [[ $month -eq 3 ]]
then

	if [[ $day -ge 20 ]]
	then

		if [[ $day -le 31 ]]
		then
	   		echo True
		else
			echo False
		fi
	else
		echo False
	fi

	else
		# day must be from 1 and april has 30 days, so, 1 to 30 days as input; month april (4); month=4
		if [[ $month -eq 4 ]]
		then

			if [[ $day -ge 1 ]]
			then

				if [[ $day -le 30 ]]
				then
					echo True
				else
					echo False
				fi
			else
				echo False
			fi
		else
				# day must be from 1 and may has 31 days, so, 1 to 31 days as input; month may (5); and month=5
				if [[ $month -eq 5 ]]
				then

					if [[ $day -ge 1 ]]
					then

						if [[ $day -le 31 ]]
						then
							echo True
						else
							echo False
						fi
					else
						echo False
					fi
				else

						# day must be till 20 days, so, 1 to 20 days as input; month june (6); and month=6
						if [[ $month -eq 6 ]]
						then

							if [[ $day -ge 1 ]]
							then

								if [[ $day -le 20 ]]
								then
									echo True
								else
									echo False
								fi
							else
								echo False
							fi
					fi #end of month=6

				fi #end of month=5

		fi #end of month=4
#else
#	echo False
fi #end of month=3
