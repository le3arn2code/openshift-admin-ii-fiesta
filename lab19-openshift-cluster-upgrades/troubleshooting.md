# Troubleshooting Notes

## Issue 1: ImagePullBackOff
**Error:**
```
Failed to pull image "quay.io/openshift/origin-nginx:latest": unauthorized: access to the requested resource is not authorized
```
**Fix:**
Used a valid OpenShift-provided image instead:
```
image: quay.io/openshift/origin-nginx:latest
```

## Issue 2: SCC Restriction
**Error:**
```
Error creating: pods "test-app-" is forbidden: unable to validate against any security context constraint
```
**Fix:**
Adjusted deployment security context to comply with `restricted` SCC:
```
securityContext:
  allowPrivilegeEscalation: false
  runAsNonRoot: true
  capabilities:
    drop: ["ALL"]
  seccompProfile:
    type: RuntimeDefault
```

After correction, pods entered **Running** state successfully.
