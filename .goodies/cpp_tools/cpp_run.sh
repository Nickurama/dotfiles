#!/bin/bash

out_name=$1

if [ -z $out_name ]
then
	out_name="a.out"
fi

output=$(./scripts/cpp_compile.sh $out_name)
if [[ "$output" != *"Compiled successfuly"* ]]
then
	echo "$output"
	exit
fi

./$out_name
