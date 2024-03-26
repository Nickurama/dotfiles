#!/bin/bash

src_dir="src"
out_dir="out"
junit=$(echo lib/junit-platform-console-standalone-*.jar)

rm out/* 2>/dev/null
output=$(javac -cp $junit $src_dir/*.java -d $out_dir 2>&1)
if [ -z "$output" ]
then
	owo_print "Compiled successfuly!"
else
	owo_print "Error compiling!"
	echo "$output"
fi
