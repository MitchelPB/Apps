New-Item -Path c:\Setup -ItemType directory

Write-Host "INSTALANDO REQUISITOS..." -ForegroundColor White -BackgroundColor DarkGreen
powershell.exe -NoProfile -Command "irm asheroto.com/winget | iex"
winget upgrade -r --accept-source-agreements --accept-package-agreements
$OfficeExec = "https://github.com/MitchelPB/Office/releases/download/Install/Office2024.exe"
Invoke-WebRequest -Uri $OfficeExec -OutFile "C:\Setup\Office2024.exe"
$OfficeConfigXML = "https://github.com/MitchelPB/Office/releases/download/Install/Office2024.xml"
Invoke-WebRequest -Uri $OfficeConfigXML -OutFile "C:\Setup\Office2024.xml"

#Write-Host "EFETUANDO DOWNLOAD DO INSTALADOR OFFICE" -ForegroundColor White -BackgroundColor DarkGreen
#& 'C:\Program Files\Git\cmd\git.exe' clone https://github.com/MitchelPB/Office2024Unnatended/ c:\Setup\

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
C:\Setup\Office2024.exe /configure C:\Setup\Office2024.xml

Write-Host "REMOVENDO APPS DESNECESSÁRIOS ..." -ForegroundColor White -BackgroundColor DarkGreen
Remove-Item -Path C:\Setup\ -Force -Recurse
cmd.exe /c "del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt""




