# edge-envoy
An edge envoy proxy configuration for kubernetes

## Setup Instructions

``` bash

 kubectl create ns edge-envoy

 cd k8s-deployment

 ./deploy-config.sh
 
 kubectl apply -f edge-envoy-deployment.yaml
 
 ```