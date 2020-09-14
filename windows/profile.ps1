Set-Location $HOME
Import-Module posh-git

$GitPromptSettings.BeforeStatus = 'on ['
$GitPromptSettings.AfterStatus = ']'
$GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n'
$GitPromptSettings.EnableStashStatus = $true

function Test-Administrator {
    $user = [Security.Principal.WindowsIdentity]::GetCurrent();
    (New-Object Security.Principal.WindowsPrincipal $user).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

function prompt
{
    if (Test-Administrator) {
        $prompt = Write-Prompt "(Admin) " -ForegroundColor ([ConsoleColor]::White)
    } else {
        $prompt = Write-Prompt ""
    }

    $prompt += Write-Prompt "$ENV:USERNAME" -ForegroundColor ([ConsoleColor]::Red)
    $prompt += Write-Prompt " at " -ForegroundColor ([ConsoleColor]::White)
    $prompt += Write-Prompt "$ENV:COMPUTERNAME" -ForegroundColor ([ConsoleColor]::DarkYellow)
    $prompt += Write-Prompt " in " -ForegroundColor ([ConsoleColor]::White)
    $prompt += & $GitPromptScriptBlock
    $prompt
}

# Color coded ls
Import-Module Get-ChildItemColor
Set-Alias ll Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope

function Get-ChildItemForce { ll -Force }
set-alias la Get-ChildItemForce -option AllScope

# Add zsh-like functionalities via PSReadLine
Import-Module PSReadLine

# Edit command line syntax highlighting
Set-PSReadLineOption -Colors @{
    "Command" = [ConsoleColor]::DarkYellow
    "String" = [ConsoleColor]::Magenta
    "Operator" = [ConsoleColor]::DarkMagenta
    "Parameter" = [ConsoleColor]::DarkGreen
    "Variable" = [ConsoleColor]::DarkBlue
}

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

# Add scripts to PATH
Get-ChildItem -Path $HOME\git\scripts* -Directory -Force -ErrorAction SilentlyContinue -Exclude .git,.pytest_cache | ForEach-Object {
    $dir = $_.FullName
    $ENV:PATH = "$ENV:PATH;$dir"
}

# Add to PATHEXT
$ENV:PATHEXT = "$ENV:PATHEXT;.PY"
