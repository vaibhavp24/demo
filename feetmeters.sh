#!/bin/bash -x

echo "Enter the height " 
read height

echo "Enter the width "
read width

k=3.281
while [ $k \< 1 ]
do
	p=$((echo "scale=2; height*k" | bc))
done

echo "Area of the rectangle is: $p Square Meters or sqin Square Inches."
