# Variable that identifies file to be created
$Network_Report = network_report.txt

#Command to print contents of ipconfig /all to new file "network_report.txt"
ipconfig /all > $Network_Report

# Function that gets the content of new file and returns with IPv4 Address information
Function IPv4 {
Get-Content $Network_Report | Select-String -Pattern "IPv4 Address" }

# Performs function
IPv4

# Removes file network_report.txt
Remove-Item $Network_Report