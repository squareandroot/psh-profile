if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadLine
}

Import-Module -Name Terminal-Icons
Import-Module -Name CompletionPredictor
Import-Module -Name Microsoft.WinGet.CommandNotFound

oh-my-posh --init --shell pwsh --config "~\Documents\PowerShell\atomic.omp.json" | Invoke-Expression

$env:VIRTUAL_ENV_DISABLE_PROMPT=1

Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView
# Set-PSReadLineOption -EditMode Emacs

Set-PSReadLineKeyHandler -Key "Tab" -Function NextSuggestion
Set-PSReadLineKeyHandler -Key "Shift+Tab" -Function PreviousSuggestion

Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

