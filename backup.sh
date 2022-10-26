#!/bin/bash

# This bash script is used to backup a user's home directory to /tmp/.

user=$(whoami)
input=/home/$user/Uni_stuff 
output=/tmp/${user}_unistuff_$(date +%Y-%m-%d_%H%M%S).tar.gz
# The function total_files reports a total number of files for a given directory.
function total_files {
	find $1 -type f | wc -l
}
# The function total_directories reports a total number of directories for a given directory.
function total_directories {
	find $1 -type d | wc -l
}

function total_archived_directories {
	tar -tzf $1 | grep /$ | wc -l
}

function total_archived_files {
	tar -tzf $1 | grep -v /$ | wc -l
}

tar -czf $output $input 2> /dev/null

src_files=$( total_files $input )
src_directories=$( total_directories $input )

arch_files=$( total_archived_files $output )
arch_directories=$( total_archived_directories $output )

echo "Files to be included: $src_files"
echo "Directories to be included: $src_directories"
echo "Files archived: $arch_files"
echo "Directories archived: $arch_directories"

if [ $src_files -eq $arch_files ]; then
	echo "Backup of $input completed!"
	echo "Details about the output backup files:"
	ls -l output
else 
	echo "Backup of $input failed!"
fi


