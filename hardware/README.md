## **Steps to run TinySoC**

#### Prerequisites

#####     1. Vivado 2018.2

​	**2. Vivado HLS 2018.2**

#### **Step1: Generate HLS IPs** 

​	go to **hls** folder and type **./run_all.sh** in terminal to generate hls_binary IP and hls_cnn IP for later use.

 After this step, the RTL IPs will be generated in the  two folders named **Binary** and **HLS_ACC** respectally

#### **Step2: Build TinySoC**

​	go to vivado folder and type **./run_vivado.sh** in terminal to build the whole TinySoC design. The script  build the vivado project and start runs to the bitstream generation.

