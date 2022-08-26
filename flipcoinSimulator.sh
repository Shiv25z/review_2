#!/bin/bash

head_count=0
tail_count=0
no_of_flips=0
target=21
min_difference=2


while (( 1 ))
do	
	flipcoin=$((RANDOM%2))
	(( no_of_flips++ )) 
	echo "Number of flips: $no_of_flips"
	
	if (( $flipcoin == 1 ))
	then 
		echo "Heads"
		(( head_count++ ))
		echo $head_count
		
	else
		echo "Tails"
		(( tail_count++))
		echo $tail_count
	fi
	
	differnce=$(( head_count - tail_count))
	if (( head_count == target && $difference >= min_difference ))
	then
		echo "Heads won "
		break;
	
	elif (( tail_count == target && $difference >= min_difference ))
	then 		
		echo "Tails won"
		break;
	elif (( head_count == tail_count ))
	then
		echo "Its a Tie! Starting Again"
	
	fi

done
