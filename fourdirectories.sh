#!/bin/bash

# Script Name:                  fourdirectories.sh
# Author:                       Kevin Ducos
# Date of latest revision:      08/17/2023
# Purpose:                      Ops Challenge - Class 4

# Declaration of variables
# dir_array=("./dir1/" "./dir2/" "./dir3/" "./dir4/")

# Declaration of functions

# Review the process for creating a new directory.
# Create four directories using the script.
# Load each directory path into an array.
# create a new .txt file within each directory by referencing the directory with array indices, not the literal directory path.
# Test & validate.

# Main


mkdir dir1 dir2 dir3 dir4

dir_array=("./dir1/" "./dir2/" "./dir3/" "./dir4/")

touch "${dir_array[0]}file.txt"
touch "${dir_array[1]}file.txt"
touch "${dir_array[2]}file.txt"
touch "${dir_array[3]}file.txt"


# End 