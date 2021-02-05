# Make sure you set the account name and account key 
# for your storage account as environment variables:
# $env:DAPR_STORAGE_ACCOUNT_NAME = <account name>
# $env:DAPR_STORAGE_ACCOUNT_KEY = <account key>

kubectl create secret generic vra-secrets -n dapr-logicapps-sample `
    --from-literal=accountName=$env:DAPR_STORAGE_ACCOUNT_NAME `
    --from-literal=accountKey=$env:DAPR_STORAGE_ACCOUNT_KEY