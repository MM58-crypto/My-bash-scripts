#!/bin/bash

ARRAY=(Apple "Orange" Mango)

echo ${ARRAY[0]} # $ARRAY[0] is not valid
echo "At index 1: ${ARRAY[1]}" # string interpolation

ARRAY[2]=Banana # update value at index 2
ARRAY[3]=Papaya # add new value at index 3

echo ${ARRAY[2]} ${ARRAY[3]}

