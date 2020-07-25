### Philip's latest adventure!

Purpose: I need more hands on k8s experience, so I'm going to work on this in my free time. I'm going to keep building
more and more complex k8s configurations. Instead of muddying the water too much, I'm going to make sure that this repo
revolves around k8s configurations, instead of pulling in other technologies just for the fun of it like I 
initially planned.

Goals: 

- [x] Put together a sample Spring Boot application exposing /health and /health/ready endpoints that I can 
spin up in k8s using minikube. 

- [x] Configure a deployment configuration that defines the sample application with the liveliness and readiness probes.

- [ ] Create a db dependency in the sample application that will give me the opportunity to set up a db cluster in 
k8s.

- [ ] Configure multi-container deployments. 

### Running something

```shell script
# Deploying the app in k8s 
cd k8s\ setup/
./deploy_probes.sh

# Building / running the app in docker-compose
cd spring-sample
mvn clean install
./func.sh
```

Thanks to:

https://spring.io/guides/gs/spring-boot-docker/

https://kubernetes.io/docs/setup/learning-environment/minikube/

https://kubernetes.io/docs/reference/kubectl/cheatsheet/