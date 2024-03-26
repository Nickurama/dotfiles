#!/bin/bash

test_suffix="Tests"
src_dir="src"
out_dir="out"
junit=$(echo lib/junit-platform-console-standalone-*.jar)
class=$1


out0=$(javac -d $out_dir -cp $junit $src_dir/*.java)
if [ -z "$out0" ]
then
	: #compilation successful
else
	owo_print "Compilation failed!"
	echo "$out0"
	exit
fi


out1=$(javac -d $out_dir -cp $out_dir:$junit $src_dir/*"$test_suffix".java)
if [ -z "$out1" ]
then
	: #test compilation successful
else
	owo_print "Test compilation failed!"
	echo "$out1"
	exit
fi


if [ -z $class ]
then
	java -jar $junit --class-path $out_dir --scan-class-path
else
	regex=$(echo "^.*${test_suffix}$")
	if [[ $class =~ $regex ]]
	then
		: #class has full name
	else
		class="${class}${test_suffix}"
	fi
	java -jar $junit execute --class-path $out_dir --scan-class-path --include-classname $class
fi
