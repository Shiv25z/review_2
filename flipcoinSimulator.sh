#!/bin/bash

head_count=0
tail_count=0

flipcoin=$((RANDOM%2))
if [ $flipcoin -eq 1 ]
then 
	echo "Heads"
	
else
	echo "Tails"
fi
