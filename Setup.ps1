Install-Module -Name psake
Install-Module -Name PsHosts
Install-Module -Name SqlServer

dotnet tool install --global smite-cli
dotnet tool update --global smite-cli

$IsFedora = $false
$IsUbuntu = $false

if ($IsLinux) {
    $release = Get-Content -Path /etc/os-release
    $release = $release.Split([Environment]::NewLine) | Where-Object { $_.StartsWith("ID=") }
    $release = $release.Substring(3)

    $IsFedora = ($release -eq "Fedora")
    $IsUbuntu = ($release -eq "Ubuntu")
}
if ($IsWindows) {
    choco install kubernetes-cli

    Add-HostEntry -Name mssql -Loopback -Force
    Add-HostEntry -Name mongo -Loopback -Force
}
elseif ($IsFedora) {
    sudo dnf -y install docker-compose
}
elseif ($IsUbuntu) {
    sudo apt -y install docker-compose
}
else {
    Write-Error "OS and/or distribution is not supported"
}