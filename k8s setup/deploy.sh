#!/bin/bash

# It hates me for wanting to use my locally built image...
# In order to get that done, I had to jump through the following hoops:
# - Set the environment variables with eval $(minikube docker-env)
# - Build the image with the Docker daemon of Minikube (eg docker build -t my-image .)
# - Set the image in the pod spec like the build tag (eg my-image)
# - Set the imagePullPolicy to Never, otherwise Kubernetes will try to download the image.
# Important note: You have to run eval $(minikube docker-env) on each terminal you want to use, since it only sets the
# environment variables for the current shell session.

# In order to create the base yml to modify, do the following:
# kubectl create deployment first-k8s-deploy --image="sample" -o yaml --dry-run > sample.yml
# then manually edit sample.yml to have the updated imagePullPolicy

echo "create deployment for the spring sample"
eval $(minikube docker-env)
docker build -t sample ../spring-sample/.
kubectl apply -f sample.yml
sleep 3
kubectl get all

# kubectl delete deployment first-k8s-deploy