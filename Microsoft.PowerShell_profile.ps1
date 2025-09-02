if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadLine
}

Import-Module -Name Terminal-Icons
Import-Module -Name CompletionPredictor

oh-my-posh --init --shell pwsh --config "https://gist.githubusercontent.com/Anwarvic/ed9661c3249aa2349b4be7d81038e109/raw/4bb1f251151d777d70a351814c61d1264a41f66e/anwar.om.json" | Invoke-Expression

$env:VIRTUAL_ENV_DISABLE_PROMPT=1

Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView
# Set-PSReadLineOption -EditMode Emacs

Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward