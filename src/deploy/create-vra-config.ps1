# Creates a config-map containing the workflow definition
kubectl create configmap vra-config -n vehicle-registration --from-file ../workflows/vehicle-registration.json