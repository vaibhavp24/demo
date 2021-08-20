#!/bin/bash

read -p "enter value:" n
for (( p=1; p<=$n; p++ ))
do
        power=$((2**$p))
        echo "power of 2 is $power"
done
