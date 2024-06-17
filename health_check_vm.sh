 #!/bin/bash

 ###############################################################
 # Author  : subash raidu
 # date    :17/6/2024
 # version : V1
 # purpose : Health check of a VM
 ##############################################################

 # set -x -- debug mode  

 set -x
 df -h  # displays the disk space

 free -g  # displays the free memory

 nproc # displays the number of cpu cores
