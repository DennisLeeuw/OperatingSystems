#!/bin/bash

IFS="n"
zin="Dit is een zin en daarin komt vaak de n voor"
for i in $zin
do
	echo $i
done

