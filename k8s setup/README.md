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