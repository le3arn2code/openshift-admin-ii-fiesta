# Troubleshooting Report

## Issue 1: CoreDNS CrashLoopBackOff
**Symptom:** `coredns` pods repeatedly crashed with `CrashLoopBackOff` and `ErrImagePull`.

**Cause:** Minikube’s restricted network prevented pulling the `registry.k8s.io/coredns` image.

**Fix:** Verified local image `registry.k8s.io/coredns/coredns:v1.12.1` inside Minikube, redeployed CoreDNS using a local image manifest (`redeploy-coredns-local.sh`).

---
## Issue 2: DNS Resolution Failed
**Symptom:** `nslookup kubernetes.default` returned “can't resolve”.

**Diagnosis:** CoreDNS ConfigMap used an invalid `pods verified` directive.

**Fix:** Reverted to the official configuration with:
```yaml
.:1053 {
    errors
    health
    kubernetes cluster.local in-addr.arpa ip6.arpa {
        pods insecure
        fallthrough in-addr.arpa ip6.arpa
    }
    forward . /etc/resolv.conf
    cache 30
    loop
    reload
    loadbalance
}
```
---
## Issue 3: Version Skew Warning
**Message:** `WARNING: version difference between client (1.27) and server (1.34)`

**Resolution:** Informational only; lab continued successfully.
