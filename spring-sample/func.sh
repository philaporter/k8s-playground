#!/bin/sh

docker build .
docker-compose -f dev-compose.yml up -d sample
curl -kv localhost:8080/health
curl -kv localhost:8080/health/ready

#echo "waiting 30 seconds and then bringing the sample app down"
#sleep 30
#echo "bringing everything down"
#docker-compose -f dev-compose.yml down

# TODO: add meaningful functional tests