#!/bin/bash
declare -A birthday
for (( i=1; i<13; i++))
do
	for (( j=92; j<=93; j++ ))
	do
		key="$i-$j"
		birthday[$key]=0
	done
done
for (( i=0; i<50; i++ ))
do
	rand1=$(($RANDOM%2+92))
	rand2=$(($RANDOM%12+1))
	key="$rand2-$rand1"
	birthday[$key]=$((${birthday[$key]}+1))
done
for key in ${!birthday[@]}
do
	echo "$key=${birthday[$key]}"
done
