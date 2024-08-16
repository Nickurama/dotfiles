#!/bin/bash

#presets are in the CMakePresets.json file, I made "debug" and "release"
cmake --preset debug .

#respectively the debug will be compiled into the folder build/debug and the release into the folder build/release
cmake --build ./build/debug
