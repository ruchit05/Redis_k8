kubectl cluster-info
kubectl get nodes
helm install my-release oci://registry-1.docker.io/bitnamicharts/redis
sleep 150
helm uninstall my-release
sleep 60
helm list
helm install my-release bitnami/redis --set auth.password=MyStrongPass
sleep 150
helm list
kubectl get pods
