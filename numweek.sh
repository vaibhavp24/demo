#!/bin/bash -x

echo "enter any number(between 1-7)"
read num

if [[ $num -eq 1 ]]
then
echo SUNDAY
elif [[ $num -eq 2 ]]
then
echo MONDAY
elif [[ $num -eq 3 ]]
then
echo TUESDAY
elif [[ $num -eq 4 ]]
then
echo WEDNESDAY
elif [[ $num -eq 5 ]]
then
echo THURSDAY
elif [[ $num -eq 6 ]]
then
echo FRIDAY
elif [[ $num -eq 7 ]]
then
echo SATURDAY

fi
