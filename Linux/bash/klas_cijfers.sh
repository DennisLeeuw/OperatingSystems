#!/bin/bash

# (C)2021 Dennis Leeuw
# Licentie: GPLv3

# Bereken het gemiddelde cijfer per student

bestand="klas.csv"

# Per regel uit het bestan
for line in `cat $bestand`; do
	IFS=","      # CSV = Comma Separated Value
	i=0          # binair: 0 = student, 1 = cijfer
	n=0          # aantal cijfers dat we optellen
	totaal=0     # Optellig van alle cijfers

	# Loop door elk element uit de regel
	for elm in $line; do
		# Het eerste veld is de student naam
		if [ $i = 0 ]; then
			student=$elm
			i=1
		# Doe niets als de toets niet gemaakt is
		# Elk ander veld is een cijfer dat meetelt
		elif [ "$elm" != "" ]; then
			totaal=$(($totaal+$elm))
			n=$(($n+1))
		fi
	done
	# totaal/n is het gemiddelde
	echo $student : $(($totaal/$n))
done
