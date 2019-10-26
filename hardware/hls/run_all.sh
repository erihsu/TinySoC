#!/bin/bash

echo "start generating Binary circuts with vivado_hls"
bash ./Binary/make_IP.sh
echo "exit from generating"

echo "-------------------------------------------"

echo "start generating CNN circuits with vivado_hls"
bash ./HLS_ACC/make_IP.sh
echo "exit from generating"