Write-Host "INSTALANDO ATUALIZAÇÕES DO WINDOWS..." -ForegroundColor White -BackgroundColor DarkGreen
winget install Nuget
Install-Module -name PSWindowsUpdate -force
Import-Module PSWindowsUpdate
Set-ExecutionPolicy RemoteSigned
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install -AutoRebootc
cmd.exe /c "del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt""