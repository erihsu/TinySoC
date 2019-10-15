#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/eric/Documents/for_competition/HLS_ACC/CNN_ACC/Rec_Acc/solution1/.autopilot/db/a.g.bc ${1+"$@"}
