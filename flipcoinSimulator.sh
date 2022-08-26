0#!/bin/bash

head_count=0
tail_count=0
no_of_flips=0
target=0

while (( 1 ))
do	
	flipcoin=$((RANDOM%2))
	(( no_of_flips++ )) 
	echo "Number of flips: $no_of_flips"
	
	if [ $flipcoin -eq 1 ]
	then 
		echo "Heads"
		(( head_count++ ))
		echo $head_count
		
	else
		echo "Tails"
		(( tail_count++))
		echo $tail_count
	fi
	

done