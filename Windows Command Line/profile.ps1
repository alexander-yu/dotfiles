Set-Location C:\Users\bzpru
Import-Module posh-git

$GitPromptSettings.BeforeText = '['
$GitPromptSettings.AfterText = '] '
$GitPromptSettings.BranchAheadStatusForegroundColor = [ConsoleColor]::Green
$GitPromptSettings.WorkingForegroundColor = [ConsoleColor]::Magenta

function Test-Administrator {
    $user = [Security.Principal.WindowsIdentity]::GetCurrent();
    (New-Object Security.Principal.WindowsPrincipal $user).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

function prompt
{
    $realLASTEXITCODE = $LASTEXITCODE

    Write-Host

    if (Test-Administrator) {
        Write-Host "(Admin) " -NoNewline -ForegroundColor White
    }

    Write-Host "$ENV:USERNAME@" -NoNewline -ForegroundColor DarkYellow
    Write-Host "$ENV:COMPUTERNAME" -NoNewline -ForegroundColor Magenta

    # Write the path
    Write-Host " : " -NoNewline -ForegroundColor DarkGray
    Write-Host $($(Get-Location).Path.replace($home, "~")) -NoNewline -ForegroundColor Blue
    Write-Host " : " -NoNewline -ForegroundColor DarkGray
    Write-Host (Get-Date -Format G) -NoNewline -ForegroundColor DarkMagenta
    Write-Host " : " -NoNewline -ForegroundColor DarkGray
    Write-Host $(if ($nestedpromptlevel -ge 1) { '>>' }) -NoNewLine

    $global:LASTEXITCODE = $realLASTEXITCODE

    Write-VcsStatus

    Write-Host ""

    return "> "
}

# Color coded ls
Import-Module Get-ChildItemColor
Set-Alias l Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope

function Get-ChildItemForce { l -Force }
set-alias la Get-ChildItemForce -option AllScope

# Add zsh-like functionalities via PSReadLine
Import-Module PSReadLine

Set-PSReadLineOption -HistoryNoDuplicates
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineOption -HistorySaveStyle SaveIncrementally
Set-PSReadLineOption -MaximumHistoryCount 4000
# history substring search
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Tab completion
Set-PSReadlineKeyHandler -Chord 'Shift+Tab' -Function Complete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete