Install-Module -Name psake


if ($IsWindows) {
    choco install kubernetes-cli
}