### K8s Environment
[WIP]

Make sure to setup minikube: https://kubernetes.io/docs/setup/learning-environment/minikube/

Running minikube is pretty easy
```shell script
minikube start --driver=hyperkit
minikube status
minikube stop
```

Once minikube is all setup, I'll use kubectl for interacting with the k8s cluster (check out this cheat sheet 
https://kubernetes.io/docs/reference/kubectl/cheatsheet/):
```shell script
#Start a deployement
kubect create deployment custombasepodname --image=redis:latest

#Autoscale deployment pods
kubectl autoscale deployment redis --min=2 --max=4

#Delete a deployment - kills it all with fire
kubectl delete deployement deployment-name

#Get all deployements
kubectl get deployments

#Delete a pod - surgically precise attack with fire
kubectl delete pod pod-name-1234
```

#### Helpful notes that I deleted in an earlier commit that I shouldn't have:
In order to use a locally built image, jump through the following hoops:
- Set the environment variables with eval $(minikube docker-env)
- Build the image with the Docker daemon of Minikube (eg docker build -t my-image .)
- Set the image in the pod spec like the build tag (eg my-image)
- Set the imagePullPolicy to Never, otherwise Kubernetes will try to download the image.
Important note: You have to run eval $(minikube docker-env) on each terminal you want to use, since it only sets the
environment variables for the current shell session.

In order to create the base yaml to modify, do the following:
```shell script
kubectl create deployment first-k8s-deploy --image="sample" -o yaml --dry-run > sample.yml
```
then manually edit sample.yml to have the updated imagePullPolicy