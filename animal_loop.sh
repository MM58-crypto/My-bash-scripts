#!/bin/bash

array=("man", "bear", "pig", "dog", "cat", "sheep")

for creature in ${array[*]};do
	echo "$creature"
done


