#!/bin/bash

export APISERVER=https://kubernetes.default.svc:443
export TOKEN=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)
export CACERT=/var/run/secrets/kubernetes.io/serviceaccount/ca.crt
export NAMESPACE=$(cat /var/run/secrets/kubernetes.io/serviceaccount/namespace)

export configmap=pgt-rv

oc login $APISERVER --token=$TOKEN --certificate-authority=$CACERT &> /dev/null
