#!/bin/bash

echo "Select the type of arithemtic operation you want to use by entering add or sub or prod or div"
read input

if [ $input == "add" ]
then
	echo "Enter 2 numbers to get the sum of them"
	read numa
	read numb
	sum=$((numa+numb))
	echo "The sum is: $sum"
elif [ $input == "prod" ]
then
	echo "Enter 2 numbers to get the product"
	read numc
	read numd
	prod=$((numc*numd))
	echo "Product: $prod"
elif [ $input == "sub" ] 
then
	echo "enter 2 numbers to subtract"
	read nume
	read numf
	sub=$((nume-numf))
	echo "Subtraction: $sub"
elif [ $input == "div" ]
then
	echo "Enter 2 numbers to divide"
	read numg
	read numh
	div=$((numg/numf))
	echo "Division: $div"
else
       echo "Invalid input, program exiting..."
       exit 0       
	
fi




