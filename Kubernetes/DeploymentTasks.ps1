Properties {
    Import-Module -Name PSKubectl

    $config = Get-KubeConfig
    $envCount = $config.Contexts.Where({$_.Name -eq $EnvironmentName}).Count

    Assert ( $envCount -gt 0 ) "Environment '$EnvironmentName' is not configured yet."
}

Task DeployToEnvironment -depends DeployMicroservices

Task DeployMicroservices -depends DeployMongoDB, DeployConfigMap

Task DeployConfigMap

Task DeployMongoDB -depends SelectNamespace {
    Exec { kubectl apply -f ./mongo-service.yml --namespace $Script:NamespaceName }
    Exec { kubectl apply -f ./mongo-statefulset.yml --namespace $Script:NamespaceName }
}

Task SelectNamespace -depends CreateNamespaces{
    Import-Module -Name PSKubectl

    $ns = Get-KubeNamespace -Name $NamespaceName

    Assert ( $ns -ne $null ) "Namespace '$NamespaceName' does not exist."
    Assert ( $ns.Status.Phase -eq 'Active' ) "Namespace '$NamespaceName' is not active."

    $Script:NamespaceName = $ns.Name

    Exec { kubectl config use-context $EnvironmentName --namespace $Script:NamespaceName }
}

Task CreateNamespaces -depends SelectEnvironment {
    Exec { kubectl apply -f ./Namespaces.yml }
}

Task SelectEnvironment {
    Exec { kubectl config use-context $EnvironmentName }
}
