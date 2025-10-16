#!/bin/bash
# Lab 04 - Using Kustomize for Overlay Management
kubectl create namespace webapp-dev
kubectl create namespace webapp-prod
kubectl apply -k overlays/dev
kubectl apply -k overlays/prod
kubectl get all -n webapp-dev
kubectl get all -n webapp-prod
kubectl port-forward deployment/prod-webapp 8081:80 -n webapp-prod &
curl -I http://localhost:8081
