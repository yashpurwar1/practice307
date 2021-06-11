#!/bin/bash -x
num=(1 3 4 5 6)
sum=0
for value in ${num[@]}
do
	sum=$(($sum+$value))
done
