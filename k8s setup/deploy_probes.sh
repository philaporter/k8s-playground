# The only significant difference is that this deploy script uses a expanded definition for our deployment
# that includes mapping for the liveliness and readiness probes.

echo "create deployment for the spring sample using health and ready checks in k8s"
eval $(minikube docker-env)
docker build -t sample ../spring-sample/.
kubectl apply -f sample_probes.yml
sleep 3
kubectl get all