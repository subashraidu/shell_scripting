#!/bin/bash

###################################
#scipt description: script to count number of lines in a file
#version  		  : V1	
#author			  : subash
#date			  : 13_11_2024
###################################

# 1. enter path of file
# 2. enter file name
# 3. count and print

read -p "Enter the path of the file: " file_path
read -p "Enter name of the file: " file_name


line_count=$(wc -l < "${file_path}/${file_name}")

echo "Number of lines present in ${file_name} = ${line_count}" 

