## **Steps to run TinySoC**



#### **Step1: Generate HLS IPs** 

​	go to **hls** folder and type **./run_all.sh** in terminal to generate hls_binary IP and hls_cnn IP for later use. After this step, two folders named **Binary** and **HLS_ACC** will be generated

#### **Step2: Build TinySoC**

​	go to vivado folder and type **./run_vivado.sh** in terminal to build the whole TinySoC design. The script also make a directory named output and the vivado project will locate in it.

