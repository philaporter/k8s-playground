### Envoy Sidecar

This little package is will act as the sidecar for my sample spring app. [WIP] Right night, this works in the sense that
I can deploy it within the same pod as the sample spring app. However, the functionality you would expect isn't there. 
I'll have to debug more / configure the setup a little better tomorrow.

The image I wanted to use was throwing an error when I tried to pull it, so I went with the dev /master version of envoy:
```shell script
docker pull envoyproxy/envoy-dev
```

How I would run it in docker as it is right now:
```shell script
docker build -t envoy .
docker run -d --name envoy -p 9901:9901 -p 10000:10000 envoy:v1
```

