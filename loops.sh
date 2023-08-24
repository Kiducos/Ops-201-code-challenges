#!/bin/bash

# Script Name:                  Bash Loop
# Author:                       Kevin Ducos 
# Date of latest revision:      08/22/2023
# Purpose:                      Ops Challenge 05

# Declaration of variables

# Declaration of functions

# Main
while true; do
	# Display running processes
	echo "Running Processes:"
	ps aux

	# Ask user for PID input
	read -p "Enter PID of the process to kill (or q to quit): " pid

	# Check if user wants to quit
	if [ "$pid" = "q" ]; then
    	echo "Exiting..."
    	break
	fi

	# Kill the process with specified PID
	kill $pid

	# Verify if the process was successfully killed
	if [ $? -eq 0 ]; then
    	echo "Process with PID $pid killed."
	else
    	echo "Unable to kill process with PID $pid."
	fi

done


# End