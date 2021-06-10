#!/bin/bash
read -p "Enter a number" num
i=1
while [ $i -le $num ]
do
	sq=`awk 'BEGIN{print(2^'$i')}'`
	if [ $sq -ge 264 ]
	then
		break
	fi
	echo "$sq"
	((i++))
done
