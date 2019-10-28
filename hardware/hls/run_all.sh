#!/bin/bash

echo "start generating Binary circuts with vivado_hls"
# change directory to Binary
cd ./Binary 
bash ./make_IP.sh
# go back to hls
cd ..
echo "exit from generating"

echo "-------------------------------------------"

echo "start generating CNN circuits with vivado_hls"
# change directory to HLS_ACC
cd ./HLS_ACC 
bash ./make_IP.sh
# go back to hls
cd ..
echo "exit from generating"

exit
