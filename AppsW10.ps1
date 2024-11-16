Write-Host "INSTALANDO REQUISITOS..." -ForegroundColor White -BackgroundColor DarkGreen
New-Item -Path c:\Setup -ItemType directory
winget upgrade -r --accept-source-agreements --accept-package-agreements
winget install Git.Git
winget install Microsoft.Nuget
$Office16Exec = "https://github.com/MitchelPB/Office2024Unnatended/releases/download/Office/Office2016.exe"
Invoke-WebRequest -Uri $Office16Exec -OutFile "C:\Setup\Office2016.exe"
$Office16XML = "https://github.com/MitchelPB/Office2024Unnatended/releases/download/Office/Office2016.xml"
Invoke-WebRequest -Uri $Office16XML -OutFile "C:\Setup\Office2016.xml"

Write-Host "INSTALANDO WINRAR" -ForegroundColor White -BackgroundColor DarkGreen
winget install Winrar

Write-Host "INSTALANDO 7-ZIP..." -ForegroundColor White -BackgroundColor DarkBlue
winget install 7-zip

Write-Host "INSTALANDO GOOGLE CHROME..." -ForegroundColor White -BackgroundColor DarkGreen
winget install Google.Chrome

Write-Host "INSTALANDO MOZILLA FIREFOX..." -ForegroundColor White -BackgroundColor DarkBlue
winget install Mozilla.Firefox

Write-Host "INSTALANDO LIGHTSHOT..." -ForegroundColor White -BackgroundColor DarkGreen
winget install LightShot

Write-Host "INSTALANDO NAPS2..." -ForegroundColor White -BackgroundColor DarkBlue
winget install Cyanfish.NAPS2

Write-Host "INSTALANDO NOTEPAD++..." -ForegroundColor White -BackgroundColor DarkGreen
winget install Notepad++.Notepad++

Write-Host "INSTALANDO PDF-XCHANGE VIEWER..." -ForegroundColor White -BackgroundColor DarkBlue
winget install TrackerSoftware.PDF-XChangeViewer

Write-Host "INSTALANDO MICROSOFT OFFICE..." -ForegroundColor White -BackgroundColor DarkGreen
Write-Host "TECLE ENTER AO FINALIZAR" -ForegroundColor White -BackgroundColor DarkGreen
C:\Setup\Office2016.exe /configure C:\Setup\Office2016.xml
Pause

Write-Host "REMOVENDO APPS DESNECESSÁRIOS ..." -ForegroundColor White -BackgroundColor DarkBlue
winget uninstall Git.Git
Remove-Item -Path C:\Setup\ -Force -Recurse

set-content -Path (Get-PSReadLineOption).HistorySavePath) -value $null






