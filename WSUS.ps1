Write-Host "PREPARANDO REQUISITOS..." -ForegroundColor White -BackgroundColor DarkGreen
Write-Host ""
Write-Host ""
Write-Host ""
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://github.com/PowerShell/PowerShell/releases/download/v7.4.6/PowerShell-7.4.6-win-x64.msi","C:\Setup\PowerShell-7.4.6-win-x64.msi")
Start-Process msiexec.exe -Wait -ArgumentList '/i "C:\Setup\PowerShell-7.4.6-win-x64.msi" /q '
& 'C:\Program Files\PowerShell\7\pwsh.exe' -NoProfile -Command "irm https://github.com/MitchelPB/Apps/releases/download/app/Wupdate.ps1 | iex"
