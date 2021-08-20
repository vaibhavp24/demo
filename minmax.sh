#!/bin/bash -x

n1=$((RANDOM%900 + 100))
echo n1

n2=$((RANDOM%900 + 100))
echo n2

n3=$((RANDOM%900 + 100))
echo n3

n4=$((RANDOM%900 + 100))
echo n4

n5=$((RANDOM%900 + 100))
echo n5


if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ] && [ $n1 -gt $n4 ] && [ $n1 -gt $n5 ]
then
    echo "n1" $n1 "is greatest"
elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ] && [ $n2 -gt $n4 ] && [ $n2 -gt $n5 ]
then
    echo "n2" $n2 "is greatest"
elif [ $n3 -gt $n1 ] && [ $n3 -gt $n2 ] && [ $n3 -gt $n4 ] && [ $n3 -gt $n5 ]
then
    echo "n3" $n3 "is greatest"
elif [ $n4 -gt $n1 ] && [ $n4 -gt $n2 ] && [ $n4 -gt $n3 ] && [ $n4 -gt $n5 ]
then
    echo "n4" $n4 "is greatest"
elif [ $n5 -gt $n1 ] && [ $n5 -gt $n2 ] && [ $n5 -gt $n3 ] && [ $n5 -gt $n4 ]
then
    echo "n5" $n5 "is greatest"

fi

if [ $n1 -lt $n2 ] && [ $n1 -lt $n3 ] && [ $n1 -lt $n4 ] && [ $n1 -lt $n5 ]
then
    echo "n1" $n1 "is least number"
elif [ $n2 -lt $n1 ] && [ $n2 -lt $n3 ] && [ $n2 -lt $n4 ] && [ $n2 -lt $n5 ]
then
    echo "n2" $n2 "is least number"
elif [ $n3 -lt $n1 ] && [ $n3 -lt $n2 ] && [ $n3 -lt $n4 ] && [ $n3 -lt $n5 ]
then
    echo "n3" $n3 "is least number"
elif [ $n4 -lt $n1 ] && [ $n4 -lt $n2 ] && [ $n4 -lt $n3 ] && [ $n4 -lt $n5 ]
then
    echo "n4" $n4 "is least number"
elif [ $n5 -lt $n1 ] && [ $n5 -lt $n2 ] && [ $n5 -lt $n3 ] && [ $n5 -lt $n4 ]
then
    echo "n5" $n5 "is least number"
fi

