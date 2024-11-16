Write-Host "INSTALANDO ATUALIZAÇÕES DO WINDOWS..." -ForegroundColor White -BackgroundColor DarkGreen
Install-Module -name PSWindowsUpdate -force
Import-Module PSWindowsUpdate
Set-ExecutionPolicy RemoteSigned
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install -AutoReboot