#!/bin/bash
echo "Think of a number between 1 to 100"
flag=true
num=50
while [ true ]
do
	read -p "if number thought is $num then press 0 if less tha $num press 1 if greater than $num press 2" inp
	if [ $inp -eq 0 ]
	then
		echo "Magic number is $num"
		break
	elif [ $inp -eq 1 ]
	then
		num=$(($num/2))
	else
		num=$(($num+(($num-(($num/2))))))
	fi
done
