Write-Host "INSTALANDO REQUISITOS..." -ForegroundColor White -BackgroundColor DarkGreen
New-Item -Path c:\Setup -ItemType directory
winget upgrade -r --accept-source-agreements --accept-package-agreements
winget install Microsoft.Nuget
$OfficeExec = "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=HomeStudentRetail&platform=x64&language=pt-br&version=O16GA"
Invoke-WebRequest -Uri $OfficeExec -OutFile "C:\Setup\OfficeSetup.exe"

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

Write-Host "INSTALANDO MICROSOFT OFFICE...TECLE ENTER QUANDO TERMINAR" -ForegroundColor White -BackgroundColor DarkGreen
C:\Setup\OfficeSetup.exe
Pause

Write-Host "REMOVENDO APPS DESNECESSÁRIOS ..." -ForegroundColor White -BackgroundColor DarkBlue
Remove-Item -Path C:\Setup\ -Force -Recurse
cmd.exe /c "del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt""







