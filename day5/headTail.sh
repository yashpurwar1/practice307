#!/bin/bash -x
x=$((RANDOM%2))
if [ $x -eq 0 ]
then
	echo "Its a tail"
else
	echo "Its a head"
fi
