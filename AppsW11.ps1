New-Item -Path c:\Setup -ItemType directory

Write-Host "INSTALANDO REQUISITOS..." -ForegroundColor White -BackgroundColor DarkGreen
powershell.exe -NoProfile -Command "irm asheroto.com/winget | iex"
winget upgrade -r --accept-source-agreements --accept-package-agreements
winget install Git.Git
winget install Microsoft.Nuget
$OfficeExec = "https://github.com/MitchelPB/Office/blob/main/Office.exe"
Invoke-WebRequest -Uri $OfficeExec -OutFile "C:\Setup\Office.exe"
$Office16XML = "https://github.com/MitchelPB/Office2024Unnatended/releases/download/Office/Office2024.xml"
Invoke-WebRequest -Uri $Office16XML -OutFile "C:\Setup\Office2016.xml"

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
C:\Setup\Office.exe /configure C:\Setup\Office\Office2024.xml

Write-Host "REMOVENDO APPS DESNECESSÁRIOS ..." -ForegroundColor White -BackgroundColor DarkGreen
winget uninstall Git.Git
Remove-Item -Path C:\Setup\ -Force -Recurse




