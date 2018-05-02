#!/bin/bash

kubectl create configmap edge-envoy-config --from-file=envoy.json=../envoy/envoy.json --namespace edge-envoy