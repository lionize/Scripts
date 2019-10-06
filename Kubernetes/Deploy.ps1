param(
	[Parameter(Mandatory=$true)]
	[string]$EnvironmentName
)

Invoke-psake -buildFile ./DeploymentTasks.ps1 -taskList DeployToEnvironment -parameters @{ EnvironmentName = $EnvironmentName }
