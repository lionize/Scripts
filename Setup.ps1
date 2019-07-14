Install-Module -Name psake

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
}
elseif ($IsFedora) {
    sudo dnf -y install docker-compose
}
elseif ($IsUbuntu) {
    Write-Host TBD
}
else {
    Write-Error "OS and/or distribution is not supported"
}