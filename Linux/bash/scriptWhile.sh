#!/bin/bash
# (C) 2021 Dennis Leeuw
# Positional parameters

echo "Dit script is opgestart als: $0"

echo -n "De parameters zijn: "
while [ "$1" != "" ]
do
	echo -n $1
	shift
done
echo

#END
