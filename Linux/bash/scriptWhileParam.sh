#!/bin/bash
# (C) 2021 Dennis Leeuw
# While voorbeeld 2

i=1
while [ "$1" != "" ]
do
	echo "Parameter $i is: $1"
	shift
	i=$(($i+1))
done

#END

