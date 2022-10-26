#!/bin/bash

echo -n "Enter your favorite planet: "
read user_planet

case "$user_planet" in 
	# input == exactly `Earth`
	Earth)
	  echo "You are currently on planet earth.";;

	# input == exactly `Mars`
	Mars)
	  echo "One day we will go there, to Mars.";;

	# input is anything | default case
	*)
 	  echo "Iam getting more info about this planet.";;
     esac

