#!/bin/bash

# display some info about the system

# Tell the user the script is starting
echo "starting the sysinfo script"
# Display the hostname of the system
hostname
# Display the current date and time
date
# Display the kernel release + architecture
uname -r
uname -m
# Display the disk usage in a human readable format
df -h
# End the script 
echo "stopping this script"




