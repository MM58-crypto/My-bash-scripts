#!/bin/bash

echo "Enter file path"
read FILE

if [ -f "$FILE" ]
then
	echo "$FILE is a normal file"
elif [ -d "$FILE" ]
then
	echo "$FILE is a directory"
else 
	echo "$FILE is a diff type of file"
fi

ls -l $FILE

