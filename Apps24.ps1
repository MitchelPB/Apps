New-Item -Path c:\Setup -ItemType directory

Write-Host "INSTALANDO REQUISITOS..." -ForegroundColor White -BackgroundColor DarkGreen
powershell.exe -NoProfile -Command "irm asheroto.com/winget | iex"
winget upgrade -r --accept-source-agreements --accept-package-agreements
winget install Git.Git
winget install Microsoft.Nuget

Write-Host "EFETUANDO DOWNLOAD DO INSTALADOR OFFICE" -ForegroundColor White -BackgroundColor DarkGreen
& 'C:\Program Files\Git\cmd\git.exe' clone https://github.com/MitchelPB/Office2024Unnatended/ c:\Setup\Office

Write-Host "INSTALANDO WINRAR" -ForegroundColor White -BackgroundColor DarkGreen
winget install Winrar

Write-Host "INSTALANDO 7-ZIP..." -ForegroundColor White -BackgroundColor DarkGreen
winget install 7-zip

Write-Host "INSTALANDO GOOGLE CHROME..." -ForegroundColor White -BackgroundColor DarkGreen
winget install Google.Chrome

Write-Host "INSTALANDO MOZILLA FIREFOX..." -ForegroundColor White -BackgroundColor DarkGreen
winget install Mozilla.Firefox

Write-Host "INSTALANDO LIGHTSHOT..." -ForegroundColor White -BackgroundColor DarkGreen
winget install LightShot

Write-Host "INSTALANDO NAPS2..." -ForegroundColor White -BackgroundColor DarkGreen
winget install Cyanfish.NAPS2

Write-Host "INSTALANDO NOTEPAD++..." -ForegroundColor White -BackgroundColor DarkGreen
winget install Notepad++.Notepad++

Write-Host "INSTALANDO PDF-XCHANGE EDITOR..." -ForegroundColor White -BackgroundColor DarkGreen
winget install TrackerSoftware.PDF-XChangeEditor

Write-Host "INSTALANDO MICROSOFT OFFICE..." -ForegroundColor White -BackgroundColor DarkGreen
C:\Setup\Office\Setup.exe /configure C:\Setup\Office\Office2024.xml

Write-Host "REMOVENDO APPS DESNECESSÁRIOS ..." -ForegroundColor White -BackgroundColor DarkGreen
winget uninstall Git.Git
Remove-Item -Path C:\Setup\ -Force -Recurse

Write-Host "INSTALANDO ATUALIZAÇÕES DO WINDOWS..." -ForegroundColor White -BackgroundColor DarkGreen
Install-Module -name PSWindowsUpdate -force
Import-Module PSWindowsUpdate
Set-ExecutionPolicy RemoteSigned
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install
Write-Host "REINICIANDO O WINDOWS..." -ForegroundColor White -BackgroundColor DarkGreen
shutdown -r -t 0


