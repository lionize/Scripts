Properties {
    #
}

Task Pull {
    Exec { docker-compose -f (Resolve-Path "docker-compose/dependencies.yml").Path pull }
}

Task Setup -depends Pull {
    Exec { docker-compose -f (Resolve-Path "docker-compose/dependencies.yml").Path up -d }
}
