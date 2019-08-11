Install-Module -Name PSReadLine
Install-Module -AllowClobber Get-ChildItemColor
Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force
New-Item -ItemType SymbolicLink -Path "$HOME\Documents\WindowsPowerShell\profile.ps1" -Target "./profile.ps1"
New-Item -ItemType SymbolicLink -Path "$HOME\AppData\Roaming\Hyper\.hyper.js" -Target "./.hyper.js"
Exit
