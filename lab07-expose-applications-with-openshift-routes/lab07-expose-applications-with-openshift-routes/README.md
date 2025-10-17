
# Lab 07 – Expose Applications with OpenShift Routes

## 🎯 Objectives
By the end of this lab, you will be able to:
- Understand the concept of OpenShift Routes and their role in exposing applications.
- Create and configure Routes to make internal applications accessible from outside the cluster.
- Implement TLS termination for secure HTTPS connections.
- Test and verify application accessibility through Routes.
- Troubleshoot common configuration issues.

## ⚙️ Environment
- **OS:** CentOS 7 (Al‑Nafi Cloud)
- **Platform:** Minikube with Docker driver
- **Ingress Controller:** NGINX Ingress
- **Kubernetes Version:** v1.34.0

## 🧩 Task Overview
| Task | Description | Status |
|------|--------------|--------|
| 1 | Deploy sample webapp and expose internally | ✅ |
| 2 | Create TLS ingress (edge termination) | ✅ |
| 3 | Test HTTP→HTTPS redirect and NGINX landing page | ✅ |
| 4 | Verify TLS certificate and load balancer | ✅ |
| 5 | Troubleshoot and validate using curl, openssl, and tunnel | ✅ |

## 🧠 Concept Mapping (OpenShift → Kubernetes)
| OpenShift Concept | Kubernetes Equivalent |
|--------------------|-----------------------|
| Route | Ingress |
| Edge TLS Termination | Ingress TLS Termination |
| Router | NGINX Ingress Controller |
| oc new-app | kubectl apply -f deployment.yaml |

## ✅ Final Result
- HTTPS redirect working correctly (308 → https://webapp.local)
- Verified NGINX default page over HTTPS
- Self-signed TLS secret `webapp-tls` functioning
- `minikube tunnel` connected to LoadBalancer service

![Final Ingress Test](screenshots/final-ingress-test.png)

## 🧹 Cleanup
```bash
kubectl delete -f manifests/webapp-ingress.yaml
kubectl delete -f manifests/webapp-deploy.yaml
minikube delete
```
