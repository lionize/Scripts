[CmdletBinding()]
param (
    [Parameter()]
    [switch]
    $SkipPulling
)

Invoke-psake -buildFile .\docker-compose-tasks.ps1 -taskList Setup -nologo -parameters @{"SkipPulling" = $SkipPulling.IsPresent }
