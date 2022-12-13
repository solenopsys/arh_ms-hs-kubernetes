# Docker
docker build . -t registry.local/hs-kubernetes:latest
docker push registry.local/hs-kubernetes:latest

# Helm
helm package .\install

## Registry width helm cli
helm push hs-kubernetes-0.1.0.tgz  oci://helm.local --insecure-skip-tls-verify

## Registry width direct http
curl --data-binary "@hs-kubernetes-0.1.0.tgz" http://helm.local/api/charts

# Env Vars
- zmq.SocketUrl=tcp://*:9999
 
 

