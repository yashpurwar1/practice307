#!/bin/bash -x
read -p "Enter length of plot in ft:" len
read -p "Enter width of plot in ft:" width
area_in_mtr=`awk 'BEGIN{printf("%0.2f",'$len'/3.281*'$width'/3.281)}'`
echo "Area in meter is : $area_in_mtr"

#Area of sixty such plots in meters

area_in_acre=`awk 'BEGIN{printf("%0.3f",'$area_in_mtr'/4047)}'`
echo "Area in acre: $area_in_acre"
