kubectl delete -f workflowhost.yaml
kubectl delete -f person-service.yaml
kubectl delete -f vehicle-state-store.yaml
kubectl delete configmap vra-config -n dapr-logicapps-sample
kubectl delete secret vra-secrets -n dapr-logicapps-sample
#kubectl delete namespace dapr-logicapps-sample