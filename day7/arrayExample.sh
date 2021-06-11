#!/bin/bash -x
declare -a fruits
fruits[0]="Apple"
fruits[1]="Banana"
fruits[2]="Orange"

#to print all the alements in the array
echo ${fruits[@]}

#printing particular value of an array
echo ${fruits[0]}

#to get count of an element of an array
echo ${#fruits[@]}

#to print indexes of an array
echo ${!fruits[@]}

#iterating value of an array
for value in ${fruits[@]}
do
	echo $value
done

#to print value=index
for index in ${!fruits[@]}
do
	echo $index=${fruits[index]}
done
