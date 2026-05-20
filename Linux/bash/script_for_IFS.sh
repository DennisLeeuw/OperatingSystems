#!/bin/bash
# (C) 2021 Dennis Leeuw
# License: GPLv3
# Tel van 1 tot 10

# Set the IFS variable to newline
IFS=$'\n'

list="1 2 3 4 5
6 7 8 9 10"

# Count from 1 to 10 ... or not
for i in ${list}
do
	# Print the contact of i to the screen
	echo $i
done

