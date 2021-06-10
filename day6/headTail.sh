#!/bin/bash
he=0
ta=0
while [ true ]
do
	ran=$((RANDOM%2))
	if [ $ran -eq 0 ]
	then
		he=$(($he+1))
		if [ $he -eq 11 ]
		then
			echo "Tails = $ta"
			echo "Heads = $he"
			echo "HEADS won"
			break
		fi
	else
		ta=$(($ta+1))
		if [ $ta -eq 11 ]
		then
			echo "Heads = $he"
			echo "Tails = $ta"
			echo "TAILS WON"
			break
		fi
	fi
done
