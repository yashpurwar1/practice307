#!/bin/bash -x
read -p "Enter a number for factorial:" num
fact=1
for (( i=1; i<=$num; i++ ))
do
	fact=$(($fact*$i))
done
echo "FActorial is $fact"
