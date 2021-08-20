#!/bin/bash -x

Result=$((RANDOM%2 + 1))
if [[ ${Result} -eq 1 ]]; then
    echo HEADS
elif [[ ${Result} -eq 2 ]]; then
    echo TAILS
fi
