#!/bin/bash
kubectl get configmaps
kubectl describe configmaps
kubectl apply -f pod-env-configmap.yaml
kubectl apply -f web-server-config.yaml
kubectl rollout restart deployment web-app-deployment
