# Lab 01 – Introduction to OpenShift and Kubernetes

## ✅ Objectives Achieved
- Verified `kubectl` and Minikube cluster connectivity.
- Explored namespaces and system pods.
- Created and managed pods (e.g., `dns-test`).
- Applied YAML manifests via ConfigMaps and Deployments.
- Troubleshot CoreDNS (`CrashLoopBackOff`, `ImagePullBackOff`).
- Validated `kube-dns` service and pod behavior.
- Captured final working outputs (cluster info, pod list, logs).

## ⚙️ Environment
- OS: CentOS (Al-Nafi Cloud)
- Kubernetes: v1.34.0 (Server), v1.27.4 (Client)
- Minikube: Single-node cluster
- Container Runtime: Docker 28.4.0

## 📚 Summary
This lab covered the foundational Kubernetes and OpenShift operations — from verifying the cluster setup to deploying and debugging pods.
All major steps, screenshots, and issues encountered (especially CoreDNS configuration errors) have been documented in detail below.
