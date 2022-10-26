#!/bin/bash

#brightnessctl package needs to be installed in order for this script to work
# adjusts brightness of device whenever running script
function inc_brightness {
	echo "Enter how bright you want your screen to be in %"
	read input
	var=$input
	brightnessctl s $var%
	echo "Current Brightness % is: $var"
}
inc_brightness

	





