# Creates a config-map containing the workflow definition
kubectl create configmap vra-config -n dapr-logicapps-sample --from-file ../workflows/vehicle-registration.json