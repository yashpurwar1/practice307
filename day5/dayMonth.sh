#!/bin/bash -x
read -p "Enter a date:" date
read -p "Enter a month:" month
if [ $date -le 31 ] && [ $month -le 12 ]
then
	if [ $date -ge 20 ] && [ $month -eq 3 ] || [ $month -eq 5 ]
	then
		echo "True"
	if [ $date -le 30 ] && [ $month -eq 4 ] || [ $month -eq 5 ]
	then
		echo "True"
	if [ $date -le 20 ] && [ $month -eq 6 ]
	then
		echo "True"
	else
		echo "False"
	fi
else
	echo "Incorrect date or month"
fi
