$context = New-AzureStorageContext -StorageAccountName ewdaprstorage -StorageAccountKey $env:DAPR_STORAGE_ACCOUNT_KEY
Get-AzureStorageTable * -Context $context | Remove-AzureStorageTable -Context $context -Force