#!/bin/bash

# Prompt user for domain input
read -p "Enter domain name: " domain



Domain_Info () {
echo "WHOIS Information for $domain:"
whois $domain

echo -e "\nDIG Information for $domain:"
dig $domain

echo -e "\nHOST Information for $domain:"
host $domain

echo -e "\nNSLOOKUP Information for $domain:"
nslookup $domain
}



# Creates a text file using the information recieved from commands above
Domain_Info > domain_info.txt

# Opens domain_info.txt in Nano Text Editor
nano domain_info.txt

# Switch "nano" with the following if a different text editor is required.

# vim - Vim Text Editor
# emacs - Emacs Text Editor
# code - Visual Studio Code
# gedit - Gedit Text Editor for GNOME
# subl - Sublime Text
# atom - Atom Text Editor
# notepad++ - Notepad++



