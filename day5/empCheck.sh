#!/bin/bash -x
isPresent=1
isPart=2
randomCheck=$((RANDOM%3))
if [ $isPresent -eq $randomCheck ]
then
	echo "Empoloyee is full time present"
elif [ $isPart -eq $randomCheck ]
then
	echo "Employee is part time present"
else
	echo "Employee is absent"
fi
