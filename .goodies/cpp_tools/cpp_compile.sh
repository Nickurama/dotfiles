#!/bin/bash

out_name=$1

if [ -z $out_name ]
then
	out_name="a.out"
fi

error=$(g++ -Werror -Wall -Wextra -Wpedantic -I ./include $(find ./src -type f -name "*.cpp") -o $out_name 2>&1)
if [ -z "$error" ]
then
	owo_print "Compiled successfuly!"
else
	owo_print "Error compiling"
	echo "$error"
fi
