#!/bin/bash

kubectl delete configmap edge-envoy-config --namespace edge-envoy

if [ "$#" -ne 1 ] ; then
  echo "Usage: $0 </path/to/envoy-config-file.json>" >&2
  echo "assuming the traffic configuration is \"simple load balancing\""
  config_file="../envoy/envoy.json"
 else
  config_file=$1
fi

kubectl create configmap edge-envoy-config --from-file=envoy.json=$config_file --namespace edge-envoy