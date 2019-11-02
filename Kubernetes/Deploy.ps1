param(
	[Parameter(Mandatory=$true)]
	[string]$EnvironmentName,
	[Parameter(Mandatory=$true)]
	[string]$NamespaceName
)

Invoke-psake -buildFile ./DeploymentTasks.ps1 -taskList DeployToEnvironment -parameters @{ EnvironmentName = $EnvironmentName; NamespaceName = $NamespaceName }
