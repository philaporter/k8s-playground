### Philip's latest adventure!
[WIP]
Background: I need more hands on k8s experience, so I'm going to work on this in my free time.

Main Goals: 

- [ ] Get a simple Spring Boot application that I can spin up in k8s using minikube. That application will
have a dependency on a database (leaning toward Redis or Couchbase). Credit to 
https://spring.io/guides/gs/spring-boot-docker/ because this is what I'm going to modify / build upon.

- [ ] Build out the k8s setup directory with a README containing links to setting up minikube. Aside from that,
this directory will have scripts that can be called to spin up and set what I want for the deploying the simple
Spring app with its DB cluster dependency. This will let me play with setting up pod templates for deployments.

Stretch Goals:

- [ ] Add greater complexity to the pod templates by making them multi-container deploys. I'm not sure I care what the
sidecar is, just so long as I get the practice configuring it. I guess I could use Envoy. 

- [ ] Create Karate for API functional testing.

- [ ] Use Cucumber for non API functional testing.

### Running something

```shell script
cd ./spring-sample
mvn clean install
./func.sh
```