#!/bin/bash
# Commands used in Lab 10 – Managing Secrets in Kubernetes

kubectl create secret generic database-secret --from-literal=DB_USERNAME=admin --from-literal=DB_PASSWORD=supersecretpassword123 --from-literal=DB_HOST=mysql-server.example.com --from-literal=DB_PORT=3306
kubectl get secrets
kubectl describe secret database-secret
kubectl get secret database-secret -o yaml
kubectl apply -f app-secret.yaml
kubectl apply -f secret-pod.yaml
kubectl exec -it secret-consumer-pod -- env | grep DATABASE
kubectl rollout restart deployment secret-app-deployment
kubectl apply -f secret-volume-pod.yaml