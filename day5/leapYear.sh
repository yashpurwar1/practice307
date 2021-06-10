#!/bin/bash -x
read -p "Enter a year:" year
if [ $year -ge 1000 ] && [ $year -le 9999 ]
then
	if [ $(($year%4)) -eq 0 ]
	then
		if [ $(($year%100)) -eq 0 ] && [ $(($year%400)) -ne 0 ]
		then
			echo "Its not a leap year"
		else
			echo "Its a leap yaer"
		fi
	else
		echo "Not a leap year"
	fi
else
	echo "Enter correct year"
fi
