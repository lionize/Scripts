Properties {
    #
}

Task Pull {
    Exec { docker-compose -f (Resolve-Path "docker-compose/dependencies.yml").Path -f (Resolve-Path "docker-compose/microservices.yml").Path pull }
}

Task Run -depends Pull {
    Exec { docker-compose -f (Resolve-Path "docker-compose/dependencies.yml").Path -f (Resolve-Path "docker-compose/microservices.yml").Path up -d }
}

Task ApplyScript -depends Run {

    $serverInstance = "localhost,1433"
    $username = "sa"
    $password = ConvertTo-SecureString -String "z0aiDwJ0205q37Nr" -AsPlainText -Force
    $credential = New-Object System.Management.Automation.PSCredential($username, $password)
    Invoke-SqlCmd -ServerInstance $serverInstance -Credential $credential -Database 'IdentityManagementService' -InputFile 'Data.sql' -OutputSqlErrors $true
}

Task Setup -depends ApplyScript, Run
