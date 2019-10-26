#!/bin/bash

PATH_TO_OUTPUT=./output

if [ ! -d "$PATH_TO_OUTPUT" ]; then
	mkdir $PATH_TO_OUTPUT
fi

vivado -f ./build_TinySoC.tcl