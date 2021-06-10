#!/bin/bash -x
for i in `seq 10`
do
	sum=$((sum+$((RANDOM%90))+10))
done
echo "Sum=$sum"
avg=`awk 'BEGIN{printf("%0.2f" , '$sum'/10)}'`
echo "Average=$avg"
