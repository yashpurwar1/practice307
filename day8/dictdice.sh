#!/bin/bash
declare -A dice_data
dice_data[1]=0
dice_data[2]=0
dice_data[3]=0
dice_data[4]=0
dice_data[5]=0
dice_data[6]=0
max=0
min=0
temp=10
#echo ${dice_data[@]}
while [ true ]
do
	rand=$(($RANDOM%6+1))
	#echo $rand
	dice_data[$rand]=$((${dice_data[$rand]}+1))
	if [ ${dice_data[$rand]} -eq 10 ]
	then
		max=$rand
		break
	fi
done

for key in ${!dice_data[@]}
do
	echo $key=${dice_data[$key]}
	if [ $temp -gt ${dice_data[$key]} ]
	then
		min=$key
		temp=${dice_data[$key]}
	fi
done
echo "Max value $max=${dice_data[$max]}"
echo "Min value $min=${dice_data[$min]}"
