1. Q: What does SCC stand for?
A: Security Context Constraints.

2. Q: Why was privileged pod denied?
A: restricted-v2 SCC forbids privileged containers.

3. Q: What UID did OpenShift assign to compliant pods?
A: Around 1012280000, within its namespace range.

4. Q: What is the purpose of 'runAsNonRoot'? A: Ensures containers do not execute as root.

5. Q: How do SCCs improve compliance? A: By enforcing least privilege and container isolation.

6. Q: Can developers edit SCCs in sandbox? A: No, only cluster-admins can.

7. Q: How do you verify which SCC a pod used? A: Check annotation openshift.io/scc.

8. Q: What happens if pod uses forbidden capabilities? A: Admission is denied.

9. Q: Which SCC is default for new namespaces? A: restricted-v2.

10. Q: Why is SCC important for DevSecOps? A: It integrates runtime security directly into the orchestration layer.
