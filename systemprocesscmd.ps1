Get-Process | Sort-Object CPU -Descending
# Get_Process retreives all active processes 
# Sort-Object sorts the active processes by values under CPU in Descending order.

Get-Process | Sort-Object ID -Descending
# Same command done with the CPU but "ID" is put in place of "CPU" 
# The active processes list is then sorted by values under "ID" in descending order. 

Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5
# Prints the active processes sorted by values under WorkingSet or WS(K) in descending order
# Select-Object pulls first 5 processes listed after the active list is sorted 

Start-Process -FilePath "msedge.exe" -ArgumentList "https://owasp.org/www-project-top-ten/"
# Start a browser process by using Start-Process -FilePath  and the desired browser (Mircrosoft Edge) 
# -ArgumentList specifies what will be open when the browser is open i.e. the link that was provided. 

for ($i = 1; $i -le 10; $i++) {
    Start-Process -FilePath "notepad.exe"
}
# Starts a for loop that opens notepad and runs the command 10 times before stopping
# The ++ operator adds 1 to $i after every command is made until the $i value is over 10 where the loop ends. 

Get-Process | Where-Object { $_.Name -eq "notepad" } | Stop-Process
# Finds all the active processes with the Name "notepad" and ends that task. 

 Stop-Process -ID 2240
# This command killed the notepad process with ID 2240. The value after "-ID" would need to be changed to specify which processes is being killed. 