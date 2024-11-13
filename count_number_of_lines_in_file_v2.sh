#!/bin/bash

###################################
#scipt description: script to count number of lines in a file
#version  		  : V1	
#author			  : subash
#date			  : 13_11_2024
###################################

# 1.function to check directory is present or not 
# 2.function to check file is present or not
# 3. enter path of file
# 4. enter file name
# 5. count and print


validate_directory() {
	if [ ! -d "$1" ]; then
		echo "Error : directory '$1' does not exits"
		exit 1
	fi	
}

validate_file() {
	fullpath="$1/$2"
	if [ ! -f "$fullpath" ]; then
		echo "Error: file '$2' does not exist in the given directory"
		exit 1
	fi
	
	if [ ! -r "$fullpath" ]; then
		echo "Error: file '$2' is not readiable"
		exit 1
	fi
	
}

# main script
echo "-----------------------------------------------------"

read -p "Enter the path of the file: " file_path
file_path="${file_path%/}"  # Remove trailing slash if present

read -p "Enter name of the file: " file_name
validate_file "$file_path" "$file_name"


line_count=$(wc -l < "${file_path}/${file_name}")

echo "Number of lines present in ${file_name} = ${line_count}" 

# end of script
echo "---------------------------------------------------"
