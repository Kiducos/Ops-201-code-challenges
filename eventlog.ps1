Get-EventLog -LogName System -After (Get-Date).AddDays(-1) | Out-File -FilePath "$env:UserProfile\Desktop\last_24.txt"
# 1 - Output all events from the System event log in the last 24 hours to last_24.txt
#   - The (Get-date).AddDays(-1) selects a the current date and searches for Events in the System log in the last 24 hours 
#   - $env:UserProfile is a variable used to identify the current users path the file is being created on. 
#   - Out-File was used instead of a ">" because the ">" doesn't functions using parameter to set a destination

Get-EventLog -LogName System -EntryType Error | Out-File -FilePath "$env:UserProfile\Desktop\errors.txt"
# 2 - Output all "error" type events from the System event log to errors.txt
#   - I used -EntryType Error to pull the System event log only showing errors and created a text file on the users Desktop

Get-EventLog -LogName System -InstanceID 16
# 3 - Print to the screen all events with ID of 16 from the System event log
#   - When the EventLog is pulled this command only shows System logs with InstanceID's matching 16

Get-EventLog -LogName System -Newest 20
# 4 - Print to the screen the most recent 20 entries from the System event log
#   - -Newest 20 shown in this command is used to display the last 20 entries in the System Event log.  

Get-EventLog -LogName System -Newest 500 | Select-Object Source
# 5 - Print to the screen all sources of the 500 most recent entries in the System event log
#   - This command used the same as the last but retrieving the last 500 entries but will only show the information displayed under "Source" using the Select-Object command. 

