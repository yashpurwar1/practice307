#!/bin/bash -x
for i in {0..4}
do
	read -p "Enter a number:" arr[$i]
done
echo ${arr[@]}
