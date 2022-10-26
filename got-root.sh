#!/bin/bash

# Determine if the user executing the script is the root user or not.

# display the uid (user id, root id is always 0)
echo "Your uid is ${UID}"

# display if the user is the root user or not
if [[ "${UID}" -eq 0 ]]
then
	echo "You are root"
else 
	echo "you are not root, normal user"
fi 
#fi is used to end an if statement



