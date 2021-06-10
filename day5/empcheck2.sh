#!/bin/bash -x
isPresent=1
empWorkingHour=8
empRatePerHour=20
randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is present"
	salary=$(($empWorkingHour*$empRatePerHour))
else
	echo "Employee is absent"
	salary =0
fi
