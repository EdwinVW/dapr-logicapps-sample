kubectl apply -f namespace.yaml

& ./create-storage-secrets.ps1 > $null
& ./create-vra-config.ps1 > $null

kubectl apply -f vehicle-state-store.yaml
kubectl apply -f person-service.yaml
kubectl apply -f vehicle-registration-app.yaml

