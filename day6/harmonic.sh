#!/bin/bash -x
read -p "Enter a number: " num
harmonic=0
for (( i=1; i <= $num; i++ ))
do
	harmonic=`awk 'BEGIN{printf("%0.2f" , '$harmonic'+1/'$i')}'`
done
echo "$harmonic"
