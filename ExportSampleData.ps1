Import-Module -Name Mdbc

Connect-Mdbc -ConnectionString 'mongodb://root:Xq5xrtzEKj44ueyd@localhost:27017'

$db = Get-MdbcDatabase -Name 'Settings'

$collection = Get-MdbcCollection -Name 'DefaultSettings' -Database $db

Get-MdbcData | Export-MdbcData -Path SampleDefaultSettings.json

$collection = Get-MdbcCollection -Name 'UserSettings' -Database $db

Get-MdbcData | Export-MdbcData -Path SampleUserSettings.json