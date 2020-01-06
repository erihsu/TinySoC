#!/bin/bash

PATH_TO_OUTPUT=./output

if [ ! -d "$PATH_TO_OUTPUT" ]; then
	mkdir $PATH_TO_OUTPUT
fi

vivado -source ./build_TinySoC.tcl -nojournal -nolog -mode 'tcl' 