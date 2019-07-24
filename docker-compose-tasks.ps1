Properties {
    #
}

Task Pull {
    Exec { docker-compose -f (Resolve-Path "docker-compose/dependencies.yml").Path -f (Resolve-Path "docker-compose/microservices.yml").Path pull }
}

Task Run -depends Pull {
    Exec { docker-compose -f (Resolve-Path "docker-compose/dependencies.yml").Path -f (Resolve-Path "docker-compose/microservices.yml").Path up -d }
}

Task ApplyScript     {
    $username = "sa"
    $password = ConvertTo-SecureString -String "z0aiDwJ0205q37Nr" -AsPlainText -Force
    $credential = New-Object System.Management.Automation.PSCredential($username,$password)
    Invoke-DbaQuery -SqlInstance "localhost,1433" -SqlCredential $credential -Database "IdentityManagementService" -MessagesToOutput -File "Data.sql" -EnableException

    
}

Task Setup -depends ApplyScript
