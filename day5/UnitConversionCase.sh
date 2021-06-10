#!/bin/bash -x
echo "Enter a number according to conversion:"
echo "1 for feet to inch:"
echo "2 for Feet to meter:"
echo "3 Inch to feet:"
echo "4 meter to feet:"
read -p">>" num
case $num in
	1) read -p "Enter len in feet:" len
	inch=$(($len*12))
	echo "len in inch is $inch"
		;;
	2) read -p "Enter len in feet:" len
	mtr=`awk 'BEGIN{printf("%0.3f" , '$len'/3.281)}'`
	echo "len in meter is $mtr"
		;;
	3) read -p "Enter len in inch:" len
	feet=`awk 'BEGIN{printf("%0.3f" , '$len'/12)}'`
	echo "len in feet is $feet"
		;;
	4) read -p "Enter len in meter:" len
	feet=`awk 'BEGIN{printf("%0.3f" , '$len'*3.281)}'`
	echo "len in feet is $feet"
		;;
	*) echo "invalid input"
esac
