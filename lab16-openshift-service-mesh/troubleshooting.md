# Troubleshooting Notes

## Issues Encountered
### 1. CrashLoopBackOff / ErrImagePull
**Cause:** Images from Docker Hub were not accessible due to sandbox restrictions.  
**Fix:** Replaced with accessible public images (e.g., `docker.io/kennethreitz/httpbin`).

### 2. Missing OperatorHub in Web Console
**Cause:** Trial account lacks cluster-admin privileges.  
**Fix:** Installed operators using YAML-based `Subscription` manifests directly from CLI.

### 3. ContainerCreating Delays
**Cause:** Network image pull delays.  
**Fix:** Waited and verified pod state transitions using `oc describe pod`.

### Final State
All services (`details`, `ratings`, `reviews`, `productpage`) in **Running** status.
