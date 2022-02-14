# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt Paradox

#Load Function 
function Get-ScriptDirectory {Split-Path $MyInvocation.ScriptName}
$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) ".\takuya.omp.json"
oh-my-posh --init --shell pwsh --config $PROMPT_CONFIG | Invoke-Expression

#alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
