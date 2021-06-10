#!/bin/bash -x
read -p "Enter length in inch:" len
feet=`awk 'BEGIN{printf("%0.2f" , '$len'/12)}'`
echo "$feet"
