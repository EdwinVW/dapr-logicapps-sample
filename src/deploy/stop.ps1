kubectl delete -f vehicle-registration-app.yaml
kubectl delete -f person-service.yaml
kubectl delete -f vehicle-state-store.yaml
kubectl delete configmap vra-config -n vehicle-registration
kubectl delete secret vra-secrets -n vehicle-registration
#kubectl delete namespace vehicle-registration