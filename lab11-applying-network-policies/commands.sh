#!/bin/bash
# Lab 11 – Applying Network Policies
# Simulation Commands

# Create namespaces and check APIs
kubectl create ns frontend
kubectl create ns backend
kubectl create ns database
kubectl api-resources | grep networkpolicies

# Apply policies and simulate verification
kubectl apply -f code/deny-all-db.yaml
kubectl get networkpolicy -n database
bash code/test-connectivity.sh
