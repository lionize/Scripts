Properties {
    Import-Module -Name PSKubectl

    $config = Get-KubeConfig
    $envCount = $config.Contexts.Where({$_.Name -eq $EnvironmentName}).Count

    Assert ( $envCount -gt 0 ) "Environment '$EnvironmentName' is not configured yet."
}

Task DeployToEnvironment -depends DeployMicroservices

Task DeployMicroservices -depends DeployDependencies, DeployConfigMap

Task DeployConfigMap

Task DeployDependencies -depends CreateNamespaces

Task CreateNamespaces -depends SelectEnvironment {
    Exec { kubectl apply -f ./Namespaces.yml }
}

Task SelectEnvironment {
    Exec { kubectl config use-context $EnvironmentName }
}
