Properties {
    #
}

Task Teardown {
    Exec { docker-compose -f (Resolve-Path "docker-compose/dependencies.yml").Path -f (Resolve-Path "docker-compose/microservices.yml").Path down }
}

Task Stop {
    Exec { docker-compose -f (Resolve-Path "docker-compose/dependencies.yml").Path -f (Resolve-Path "docker-compose/microservices.yml").Path stop }
}

Task Status {
    Exec { docker-compose -f (Resolve-Path "docker-compose/dependencies.yml").Path -f (Resolve-Path "docker-compose/microservices.yml").Path ps }
}

Task Pull {
    Exec { docker-compose -f (Resolve-Path "docker-compose/dependencies.yml").Path -f (Resolve-Path "docker-compose/microservices.yml").Path pull }
}

Task Run -depends Pull {
    Exec { docker-compose -f (Resolve-Path "docker-compose/dependencies.yml").Path -f (Resolve-Path "docker-compose/microservices.yml").Path up -d }
}

Task ApplyScript -depends Run {

    $connectionString = "Server=localhost;Port=5432;Database=IdentityManagement;User Id=postgres;Password=IYmv5OcqEoANcO7s;"

    Import-Module -Name SimplySql

    try {
        Open-PostGreConnection -ConnectionString $connectionString 
        
        $sqlFilePath = (Resolve-Path "./Data.sql").Path
        $query = Get-Content -Path $sqlFilePath;
        Invoke-SqlUpdate -Query $query
        Close-SqlConnection
    }
    catch {
        throw
    }
}

Task Setup -depends ApplyScript, Run
