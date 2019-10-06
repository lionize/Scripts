Task DeployToEnvironment -depends DeployMicroservices

Task DeployMicroservices -depends DeployDependencies, DeployConfigMap

Task DeployConfigMap

Task DeployDependencies -depends SelectEnvironment

Task SelectEnvironment {
    Exec { kubectl config set-context $EnvironmentName }
}
