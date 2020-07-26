echo "create deployment for the spring sample using health and ready checks in k8s"
eval $(minikube docker-env)
docker build -t sample ../spring-sample/.
docker build -t envoy ../envoy/.
kubectl apply -f sample_multi_container_pod.yml
sleep 3
kubectl get all