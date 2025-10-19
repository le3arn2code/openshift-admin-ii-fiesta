#!/bin/bash
# Key RBAC commands
kubectl get roles -A
kubectl get rolebindings -A
kubectl auth can-i --list