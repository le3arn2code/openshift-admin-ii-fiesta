
# Troubleshooting Notes

## 1. Docker socket permission denied
**Fix:** Added user to `docker` group and restarted Docker.

## 2. CrashLoopBackOff in nginx pods
**Fix:** Updated nginx.conf in values.yaml with /tmp directory for writable logs.

## 3. coredns in CrashLoopBackOff
**Fix:** Enabled metrics-server and ingress addons in Minikube.

## 4. kubectl -w hangs
**Fix:** Added kill script ~/kill-kubectl-watch.sh to terminate watch sessions safely.
