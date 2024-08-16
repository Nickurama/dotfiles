#!/bin/bash

out_name="tests.out"

g++ -Werror -Wall -Wextra -Wpedantic -I ./include $(find ./src -type f -name "[^Main]*.cpp") $(find ./test -type f -name "*.cpp") -o $out_name
./${out_name}
rm ${out_name}
