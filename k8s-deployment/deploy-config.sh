#!/bin/bash

if [ "$#" -ne 1 ] ; then
  echo "Usage: $0 </path/to/envoy-config-file.json>" >&2
  echo "assuming the traffic configuration is \"simple load balancing\""
  config_file="../envoy/envoy.json"
 else
  config_file=$1
fi

rt_config_file="../envoy/runtime/routing_ts_node-app_latest"

kubectl create configmap edge-envoy-config --from-file=envoy.json=$config_file --namespace edge-envoy -o yaml --dry-run | kubectl apply -f -
kubectl create configmap edge-envoy-rt-config --from-file=latest=$rt_config_file --namespace edge-envoy -o yaml --dry-run | kubectl apply -f -