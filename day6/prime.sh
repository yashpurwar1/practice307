#!/bin/bash -x
read -p "Enter a number" num
flag=0
n=$(($num/2))
for (( i=2; i<=n; i++ ))
do
	temp=$(($num%$i))
	if [ $temp -eq 0 ]
	then
		flag=1
		break
	fi
done

if [ $num -eq 1 ]
then
	echo "$num is not prime"
else
	if [ $flag -eq 0 ]
	then
		echo "$num ia a prime number"
	else
		echo "$num is not a prime number"
	fi
fi
