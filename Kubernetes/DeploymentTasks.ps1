Properties {
    $config = Get-KubeConfig
    $envCount = $config.Contexts.Where({$_.Name -eq $EnvironmentName}).Count

    Assert ( $envCount -gt 0 ) "Environment '$EnvironmentName' is not configured yet."
}

Task DeployToEnvironment -depends DeployMicroservices

Task DeployMicroservices -depends DeployDependencies, DeployConfigMap

Task DeployConfigMap

Task DeployDependencies -depends SelectEnvironment

Task SelectEnvironment {
    Exec { kubectl config set-context $EnvironmentName }
}
