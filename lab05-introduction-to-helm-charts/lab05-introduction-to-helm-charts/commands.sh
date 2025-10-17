#!/bin/bash
# === Lab 05 Commands ===
helm version
helm repo add stable https://charts.helm.sh/stable
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm create webapp
helm lint webapp/
helm install my-webapp webapp/
kubectl get all -l app.kubernetes.io/instance=my-webapp
kubectl describe configmap my-webapp-config
kubectl port-forward svc/my-webapp 8080:80 &
curl http://localhost:8080/health
helm package webapp/
helm install test-webapp webapp-0.1.0.tgz --set replicaCount=1
