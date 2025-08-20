docker desktop start
sleep 10
docker ps
#Start Minikube with default settings (requires minikube and virtualization installed)
minikube start --driver=docker --cpus=2 --memory=1960
sleep 120