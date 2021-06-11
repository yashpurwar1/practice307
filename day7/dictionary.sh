#!/bin/bash -x
declare -A person
person[name]="Yash"
person[city]="Kadaura"
person[state]="UP"
echo ${person[@]}
echo ${person[state]}
echo ${!person[@]}
echo ${#person[@]}

for key in ${!person[@]}
do
	echo $key=${person[$key]}
done
