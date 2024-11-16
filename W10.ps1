#powershell.exe -NoProfile -Command "irm asheroto.com/winget | iex"
#cmd.exe /c "powershell.exe -NoProfile -Command "irm https://github.com/MitchelPB/Apps/releases/download/app/Apps24-10.ps1 | iex""
#exit

$PowerFile = "https://github.com/PowerShell/PowerShell/releases/download/v7.4.6/PowerShell-7.4.6-win-x64.msi"
Invoke-WebRequest -Uri $PowerFile -OutFile "C:\Setup\PowerShell-7.msi"
msiexec /package C:\Setup\PowerShell-7.msi /passive
pwsh.exe -NoProfile -Command "irm https://github.com/MitchelPB/Apps/releases/download/app/W10.ps1 | iex"