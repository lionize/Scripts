Properties {
    Import-Module -Name PSKubectl

    $config = Get-KubeConfig
    $envCount = $config.Contexts.Where({$_.Name -eq $EnvironmentName}).Count

    Assert ( $envCount -gt 0 ) "Environment '$EnvironmentName' is not configured yet."
}

Task DeployToEnvironment -depends DeployIdentityManagementService, DeployTaskManagementService, DeployHabiticaTaskProviderService

Task DeployIdentityManagementService -depends DeployRabbitMQ, DeployPostgres, DeployMicroserviceConfigMap

Task DeployTaskManagementService -depends DeployRabbitMQ, DeployMongoDB, DeployMicroserviceConfigMap

Task DeployHabiticaTaskProviderService -depends DeployRabbitMQ, DeployMongoDB, DeployRedis, DeployMicroserviceConfigMap

Task DeployMicroserviceConfigMap

Task DeployRabbitMQ -depends SelectNamespace

Task DeployPostgres -depends SelectNamespace

Task DeployRedis -depends SelectNamespace {
    Exec { kubectl apply -f ./redis-deployment.yml --namespace $Script:NamespaceName }
    Exec { kubectl apply -f ./redis-service.yml --namespace $Script:NamespaceName }
}

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
