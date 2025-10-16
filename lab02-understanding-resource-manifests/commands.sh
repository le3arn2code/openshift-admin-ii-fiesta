#!/bin/bash
mkdir ~/lab2-manifests
cd ~/lab2-manifests
nano nginx-deployment.yaml
oc apply --dry-run=client -f nginx-deployment.yaml
oc apply -f nginx-deployment.yaml
oc get deployments
oc get pods -l app=nginx
oc describe deployment nginx-deployment | head -40
oc rollout status deployment/nginx-deployment --timeout=120s
POD_NAME=$(oc get pods -l app=nginx -o jsonpath='{.items[0].metadata.name}')
POD_IP=$(oc get pod $POD_NAME -o jsonpath='{.status.podIP}')
oc run test-pod --image=curlimages/curl --rm -it --restart=Never -- curl -s http://$POD_IP
oc get replicasets -l app=nginx
oc get events --field-selector involvedObject.name=nginx-deployment | tail -10
oc get deployment nginx-deployment -o json | jq '.status'
oc delete deployment nginx-deployment
cd ~
rm -rf lab2-manifests
