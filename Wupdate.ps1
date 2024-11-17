Install-Module -name PSWindowsUpdate -force
Import-Module PSWindowsUpdate
Set-ExecutionPolicy RemoteSigned
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "O SISTEMA IRA REINICIAR APOS O TERMINO..." -ForegroundColor White -BackgroundColor DarkGreen
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install -AutoReboot
cmd.exe /c "del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt""