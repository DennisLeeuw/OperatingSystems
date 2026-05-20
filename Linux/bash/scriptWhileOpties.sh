#!/bin/bash

# Maak de variabele user leeg
user=""

# Loop zolang als er positional parameters zijn
while [ "$1" != "" ]
do

	# Test of parameter 1 -u bevat 
	if [ "$1" = "-u" ]
		then
		# Parameter 2 mag geen optie zijn en mag dus niet
		# beginnen met een -
		if [ "${1:0:1}" = "-" ]; then
			echo "Syntax error!"
			echo "Syntax: $0 -u <username>"
			exit 1
		fi
		# Als parameter 2 geen optie is dan nemen we aan
		# dat het een gebruiker is
		user=$2
		shift
	# Kijk of de gebruiker om hulp vraagt
	elif [ "$1" = "-h" ]
		then
		echo "Syntax: $0 -u <username>"
		exit 0
	fi
	shift
done

# Als de variabele user leeg is dan heeft de gebruiker geen -u
# meegegeven. Vertel hem hoe we gebruikt moeten worden
if [ "$user" = "" ]; then
	echo "Syntax: $0 -u <username>"
	exit 1
fi

echo "We gaan directories aanmaken voor: ${user}"

#END
