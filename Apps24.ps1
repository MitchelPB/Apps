
#mkdir TEMP
#CD TEMP
mkdir c:\Setup
Write-Host "INSTALANDO WINGET ATUALIZADO..." -ForegroundColor White -BackgroundColor DarkGreen

#$WingetFile = "https://github.com/asheroto/winget-install/releases/latest/download/winget-install.ps1"
#Invoke-WebRequest -Uri $WingetFile -OutFile "c:\Setup\Winget.ps1"
powershell.exe -NoProfile -Command "Set-ExecutionPolicy -ExecutionPolicy 'Bypass'" #'RemoteSigned'"
powershell.exe -NoProfile -Command "irm asheroto.com/winget | iex"


Write-Host "ATUALIZANDO PROGRAMAS" -ForegroundColor White -BackgroundColor DarkGreen
winget upgrade -r --accept-source-agreements --accept-package-agreements
Write-Host "INSTALANDO GIT" -ForegroundColor White -BackgroundColor DarkGreen
winget install Git.Git
Write-Host "EFETUANDO DOWNLOAD DO INSTALADOR OFFICE" -ForegroundColor White -BackgroundColor DarkGreen
& 'C:\Program Files\Git\cmd\git.exe' clone https://github.com/MitchelPB/Office2024Unnatended/ c:\Setup\Office
Write-Host "INSTALANDO WINRAR" -ForegroundColor White -BackgroundColor DarkGreen
winget install Winrar
Write-Host "INSTALANDO 7-ZIP..." -ForegroundColor White -BackgroundColor DarkGreen
winget install 7-zip
Write-Host "INSTALANDO ACROBAT READER..." -ForegroundColor White -BackgroundColor DarkGreen
winget install Adobe.Acrobat.Reader.64-bit
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
Write-Host "EXECUTANDO ATIVADOR WINDOWS / OFFICE ..." -ForegroundColor White -BackgroundColor DarkGreen
irm https://get.activated.win | iex