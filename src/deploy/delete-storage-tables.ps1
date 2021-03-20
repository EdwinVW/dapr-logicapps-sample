$tables = az storage table list --account-name $env:DAPR_STORAGE_ACCOUNT_NAME --account-key $env:DAPR_STORAGE_ACCOUNT_KEY -o tsv --query "[].name"
foreach ($table in $tables)
{
    echo "Delete $table"
    az storage table delete --name $table --account-name $env:DAPR_STORAGE_ACCOUNT_NAME --account-key $env:DAPR_STORAGE_ACCOUNT_KEY -o none
}
