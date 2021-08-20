#!/bin/bash -x

a=$(((RANDOM%6 +1)))
echo $a
b=$(((RANDOM%6+1)))
echo $b
c=$((a+b))
echo $c
