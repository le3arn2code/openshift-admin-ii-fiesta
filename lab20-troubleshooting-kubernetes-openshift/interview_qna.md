# Interview Q&A – Troubleshooting Kubernetes/OpenShift

**1. What is the first step when troubleshooting a failing pod?**  
Check `oc describe pod` and `oc logs` to view event history and container logs.

**2. How do you resolve a `CrashLoopBackOff` error?**  
Inspect logs to identify cause, fix init permissions or misconfiguration, and reapply manifest.

**3. How do you handle PVCs stuck in Pending state?**  
Ensure a valid StorageClass and that a pod is scheduled to trigger dynamic provisioning.

**4. How can you analyze DNS issues inside a pod?**  
Use `nslookup` or `dig` within a test BusyBox pod to confirm CoreDNS functionality.

**5. How can resource limits cause application instability?**  
If requests are too high or limits too low, pods may stay Pending or OOMKilled.

**6. How do you find node-level issues?**  
Run `oc describe node` and `oc get events --sort-by='.lastTimestamp'`.

**7. How can you monitor cluster health quickly?**  
Use `oc get nodes`, `oc get pods -A`, and check metrics with `kubectl top nodes/pods`.

**8. What is the difference between `CrashLoopBackOff` and `ImagePullBackOff`?**  
CrashLoopBackOff means container keeps crashing; ImagePullBackOff means the image cannot be pulled.

**9. How do you debug a pod stuck in Init phase?**  
Run `oc logs <pod> -c <init-container>` to identify setup script errors.

**10. How do you verify a fix after applying changes?**  
Check pod logs again, ensure status is Running, and validate endpoint/service availability.
