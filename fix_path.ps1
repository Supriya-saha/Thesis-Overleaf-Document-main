# Fix PATH by removing invalid g++.exe entry from System PATH
$machinePath = [Environment]::GetEnvironmentVariable("Path", "Machine")
$cleanPath = $machinePath -replace 'C:\\MinGW\\bin\\g\+\+\.exe;?', ''
[Environment]::SetEnvironmentVariable("Path", $cleanPath, "Machine")
Write-Host "Successfully removed C:\MinGW\bin\g++.exe from System PATH"
Write-Host "Please restart VS Code for changes to take effect"
