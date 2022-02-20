#!/bin/bash
echo "Enter the number of the files:"
#input
read myinput
#count line
nbfiles=$(ls -lrt | wc -l)

function runit {
#runit function to start the loop
while [[ $myinput -ne $nbfiles ]]

do
	if [[ $myinput -gt $nbfiles ]] #check the input if it's greater than the number of the file number
	then
		echo "The guess was too high."
	else
		echo "The guess was too low."
	fi
	break
done
}

runit

echo "Listed file : "
echo ls -lrt 
