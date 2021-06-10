#!/bin/bash -x
read -p "Enter a number" num
for (( i=1; i<=$num; i++ ))
do
	sq=`awk 'BEGIN{printf(2^'$i')}'`
	echo "$sq"
done
