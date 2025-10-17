
#!/bin/bash
# Helm Lab 06 Commands

kubectl create namespace helm-lab
helm install webapp-default . --namespace helm-lab
helm install webapp-dev . -f values/values-dev.yaml --namespace dev --create-namespace
helm install webapp-staging . -f values/values-staging.yaml --namespace staging --create-namespace
helm install webapp-prod . -f values/values-prod.yaml --namespace prod --create-namespace
kubectl get pods -n dev
kubectl get pods -n staging
kubectl get pods -n prod
