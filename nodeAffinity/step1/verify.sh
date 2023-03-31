#!/bin/bash

kubectl get pods 

RESULT=$(kubectl get pods app -ojson | jq -r .spec.nodeName)

if [[ $RESULT = "node01" ]]; then
    exit 0
else
    exit 1
fi