#!/bin/bash -x
max=0
min=0
for i in $(seq 5)
do
	x=$(($((RANDOM%899))+100))
	if [ $min -eq 0 ]
	then
		min=$x
		max=$x
	elif [ $x -ge $max ]
	then
		max=$x
	elif [ $x -le $min ]
	then
		min=$x
	fi
done
echo "Minimum=$min and Maximun=$max"
