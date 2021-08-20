#!/bin/bash -x

read -p "enter a number: " n
harmonic=0
for (( i=1; i<=n; i++))
do
harmonic=` echo $harmonic+$i `
done
