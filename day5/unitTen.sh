#!/bin/bash -x
read -p "Enter a number less than 1000:" num
if [ $num -lt 10 ]
then
	echo "unit place = $num"
elif [ $num -lt 100 ]
then
	echo "unit place = $(($num/10))"
	echo "ten place = $(($num%10))"
elif [ $num -lt 1000 ]
then
        echo "unit place = $(($num/100))"
        echo "ten place = $(($num/10%10))"
	echo "Hundred place = $(($num%10))"
else
	echo "Wrong number"
fi
