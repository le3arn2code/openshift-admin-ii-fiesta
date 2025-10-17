
# Troubleshooting Notes – Lab 07

## Issue 1: ErrImagePull
**Symptom:** `Back-off pulling image quay.io/redhattraining/hello-world-nginx:v1.0`  
**Fix:** The image registry may require login or be temporarily unavailable. Use a public nginx image for testing:
```bash
kubectl set image deployment/webapp webapp=nginx:latest
```

## Issue 2: Connection Refused on 127.0.0.1:80 / 443
**Cause:** `minikube tunnel` was not active or LoadBalancer not assigned.
**Fix:**
```bash
sudo pkill -f "minikube tunnel"
sudo nohup minikube tunnel > /tmp/tunnel.log 2>&1 &
sleep 10
```

## Issue 3: "no cgroup namespaces" Error with kind
**Fix:** CentOS 7 kernel lacks cgroup namespace support. Switch to Minikube (Docker driver).

## Issue 4: HTTP works but HTTPS fails
**Fix:** Ensure TLS secret name in Ingress matches the spec (`webapp-tls`).

## Verification Checklist
- `kubectl get pods` → Running
- `kubectl get svc` → ClusterIP assigned
- `kubectl get ingress` → Host webapp.local
- `minikube tunnel status` → Running
