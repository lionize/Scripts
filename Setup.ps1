Install-Module -Name psake

dotnet tool install --global smite-cli
dotnet tool update --global smite-cli

if ($IsWindows) {
    choco install kubernetes-cli
}