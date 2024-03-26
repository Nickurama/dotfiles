#!/bin/bash

#output=$(./compile.sh)
output=$(java_compile)
if [[ "$output" != *"Compiled successfuly!"* ]]
then
	echo "$output"
	exit
fi


cd out

class="Client"
if [ -z $1 ]
then
	owo_print "Running on default class \"Client\""
else
	owo_print "Running on class \"{$1}\""
	class=$1
fi

java $class
