param(
	[Parameter(Mandatory=$true)]
	[string]$EnvironmentName
)

Invoke-psake -buildFile ./DeploymentTasks.ps1 -taskList Deploy -parameters @{ EnvironmentName = $EnvironmentName }
