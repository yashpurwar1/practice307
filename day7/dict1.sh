#!/bin/bash -x
declare -A example
for i in `seq 3`
do
	read -p "Enter key $i:" key
	read -p "Enter value $i:" val
	exam[$key]="$val"
done

for key in ${!exam[@]}
do
        echo $key=${exam[$key]}
done
