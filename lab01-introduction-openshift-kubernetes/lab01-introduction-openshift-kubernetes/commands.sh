#!/bin/bash
# Lab 01 - Commands Executed

echo "=== Cluster Info ==="
kubectl cluster-info

echo "=== Node Info (detailed) ==="
kubectl get nodes -o wide

echo "=== Kubernetes Version ==="
kubectl version

echo "=== Namespaces ==="
kubectl get namespaces

echo "=== All Pods ==="
kubectl get pods -A -o wide

echo "=== kube-dns Service ==="
kubectl get svc -n kube-system kube-dns -o wide

echo "=== CoreDNS ConfigMap (top part) ==="
kubectl -n kube-system get configmap coredns -o yaml | head -20

echo "=== Describe CoreDNS Pod ==="
kubectl -n kube-system describe pod -l k8s-app=kube-dns | head -25

echo "=== DNS Test Pod ==="
kubectl get pod dns-test -o wide

echo "=== Pod Logs (if any) ==="
kubectl logs dns-test || echo "No logs generated (sleep pod)"

echo "=== Events (recent troubleshooting actions) ==="
kubectl get events --sort-by=.metadata.creationTimestamp | tail -10

echo "=== Current Context ==="
kubectl config current-context
