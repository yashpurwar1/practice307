#!/bin/bash -x
for filename in $(ls)
do
	ext=${filename##*\.}
	case $ext in
		java) echo "$filename : java fole"
			;;
		sh) echo "$filename: shell file"
			;;
		*) echo "$filename: file not processed"
			;;
	esac
done
