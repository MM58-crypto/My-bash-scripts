#!/bin/bash

FILE="/home/mm58/items.txt"

if [ -e "$FILE" ] 
then
	echo "$FILE passwords are enabled"
fi

if [ -x "$FILE" ]
then 
	echo "You have permission to execute $FILE"
else 
	echo "You don't have persmission to execute $FILE"
fi

