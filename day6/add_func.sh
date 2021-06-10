#!/bin/bash -x
function add()
{
	sum=$(($1+$2+$3))
	return $sum
}
#calling func
a=10
b=20
c=30
sum1 = add a b c
