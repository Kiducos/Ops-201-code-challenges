#!/bin/bash

# Script Name:                  Ops Challenge - System Information 
# Author:                       Kevin Ducos 
# Date of latest revision:      09/06/2023
# Purpose:                      Ops Challenge 07

# Declaration of variables

# Declaration of functions


# Main

sudo lshw | grep "ubuntu" 
sudo lshw | grep -A 6 "*-cpu" | grep -v "version"
sudo lshw | grep -A 3 "*-memory"
sudo lshw | grep -A 12 "*-display" | grep -v "logical name" |grep -v "version"
sudo lshw | grep -A 15 "*-network"



# End