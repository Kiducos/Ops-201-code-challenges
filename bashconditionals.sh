#!/bin/bash

# Script Name:                  bashconditionals.sh
# Author:                       Kevin Ducos
# Date of latest revision:      09/05/2023
# Purpose:                      Ops Challenge - Conditionals 

# Declaration of variables
# stop_go=1

# # Declaration of functions


# # Main
# while [ $stop_go -eq 1 ]; do
# echo "Which file or directory are you looking for?"
# read fod 

# if [[ -d "$fod" ]]; then
#     echo "$fod exists."
# if [[ -f "$fod" ]]; then
#     echo "$fod exists."
# else
#     # If it doesn't exist, create it (you can replace this with your specific commands)
#     echo "File or directory doesn't exist, creating now..."
# fi
# fi
# if [[ -d "$fod" ]]; then
#          # If it's a directory
#     mkdir -p "$fod"
#     echo "Created directory: $fod"
#     elif [[ -f "$fod" ]]; then
#           # If it's a file
#         touch "$fod"
#         echo "Created file: $fod"
    
# fi
# stop_go=0

# done



# # End 


# Create a script that detects if a file (-f) or directory (-d) exists (-e for both), then creates it if it does not exist.
# Your script must use at least one array, one loop, and one conditional.

stop_go=1


while [ $stop_go -eq 1 ]; do
fod=("file" "directory") 
echo "File of Directory?"
read type 

if [[ "${fod[@]}" =~ "$type" ]]; then
    if [[ "$type" == "file" ]]; then
        echo "$type name"
        read name
        if [[ -f "$name" ]]; then
            echo "$type $name exists"
        else
            echo "$type with $name doesn't exist, creating now..."
            touch $name 
        fi

    elif [[ "$type" == "directory" ]]; then
        echo "$type name"
        read name
        if [[ -f "$name" ]]; then
        echo "$type $name exists"
    else
        echo "$type with $name doesn't exist, creating now..."
        mkdir $name 
    fi
fi
    stop_go=0
else 
    echo "Please choose either file or directory"
fi

done