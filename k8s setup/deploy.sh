#!/bin/bash
# create deployment for the spring sample and it's envoy sidecar
eval $(minikube docker-env)
docker build -t sample ../spring-sample/.
docker build -t envoy ../envoy/.
kubectl apply -f sample_multi_container_pod.yml
sleep 3
kubectl get all