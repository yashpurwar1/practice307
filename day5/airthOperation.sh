#!/bin/bash -x
read -p "Enter number a:" a
read -p "Enter number b:" b
read -p "Enter number c:" c
first=$((a+b*c))
second=$((c+a/b))
third=$((a%b+c))
fourth=$((a*b+c))
if [ $first -ge $second ] && [ $first -ge $third ] && [ $first -ge $fourth ]
then
	echo "First equation is largest"
elif [ $second -ge $first ] && [ $second -ge $third ] && [ $second -ge $fourth ]
then
	echo "Second equation is largest"
elif [ $third -ge $second ] && [ $third -ge $first ] && [ $third -ge $fourth ]
then
	echo "Third equation is largest"
else
	echo "Fourth equation is largest"
fi
if  [ $first -le $second ] && [ $first -le $third ] && [ $first -le $fourth ]
then
        echo "First equation is smallest"
elif [ $second -le $first ] && [ $second -le $third ] && [ $second -le $fourth ]
then
        echo "Second equation is smallest"
elif [ $third -le $second ] && [ $third -le $first ] && [ $third -le $fourth ]
then
        echo "Third equation is smallest"
else
        echo "Fourth equation is smallest"
fi
