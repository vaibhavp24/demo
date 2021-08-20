#!/bin/bash -x

echo "enter day"
read day

echo "enter month"
read month

if
	[month=="april" || month=="may"]
		if[day -ge "1" || day -le "31"]
			echo " TRUE "
fi
