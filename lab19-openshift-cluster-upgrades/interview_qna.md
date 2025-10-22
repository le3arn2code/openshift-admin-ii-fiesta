# Interview Q&A

1. **What is the purpose of the ClusterVersion Operator (CVO)?**
   The CVO manages the OpenShift upgrade lifecycle, applying new payloads and verifying consistency across components.

2. **Why might an OpenShift cluster show Upgradeable=False?**
   Due to incompatible operators, deprecations, or AdminAck requirements blocking a safe minor version upgrade.

3. **How can you check available upgrades?**
   Using `oc adm upgrade` or inspecting `status.availableUpdates` in the ClusterVersion CR.

4. **How do you back up cluster state before an upgrade?**
   Export key resources using:
   ```bash
   oc get clusterversion -o yaml > backup/
   oc get clusteroperators -o yaml > backup/
   ```

5. **What are SCCs in OpenShift?**
   Security Context Constraints restrict pod privileges, enforcing least privilege and compliance.

6. **Why do pods fail with ‘forbidden: not usable by user or serviceaccount’?**
   The user or namespace lacks SCC permissions to use the required security context.

7. **What indicates a healthy cluster post-upgrade?**
   All ClusterOperators should be `AVAILABLE=True`, `PROGRESSING=False`, and `DEGRADED=False`.

8. **How can you validate workloads after an upgrade?**
   Deploy a simple test app, verify pods are running, and ensure services respond within the cluster.

9. **What’s the role of oc adm upgrade --include-not-recommended?**
   It lists all possible updates, including those not officially recommended by Red Hat.

10. **What’s the significance of the monitoring script?**
    It automates cluster health checks during upgrades, capturing status of pods, clusteroperators, and nodes.
