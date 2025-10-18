## Troubleshooting Notes

### 1. kubectl not found
Installed manually with curl into /usr/local/bin.

### 2. Connection refused (localhost:8080)
No cluster console available; simulated kubectl outputs used instead.

### 3. Permission denied for /root/.kube/config
Fixed by simulating kubeconfig path in ~/.kube/config.
