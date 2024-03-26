#!/bin/bash

path=$1
java_goodies_path="$HOME/.goodies/java_tools"

if [ -z $path ]
then
	path="."
fi

mkdir $path/lib
mkdir $path/out
mkdir $path/src

#cp $java_goodies_path/compile.sh $path
#cp $java_goodies_path/run.sh $path
#cp $java_goodies_path/test.sh $path
cp $java_goodies_path/junit_lib/junit-platform-console-standalone-*.jar $path/lib
cp $java_goodies_path/templates/Client.java $path/src

owo_print "Project created!"
