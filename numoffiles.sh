#!/bin/bash

function num_of_files () {
	varfiles=$(ls -l | wc -l)
	echo  $varfiles

}

num_of_files 
