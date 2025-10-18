# Interview Q&A – NetworkPolicies

1. **What are NetworkPolicies?**  
   Rules to control pod-level traffic flow in Kubernetes.

2. **Ingress vs Egress policies?**  
   Ingress governs incoming, Egress governs outgoing traffic.

3. **Why CNI plugin needed?**  
   CNIs like Calico enforce NetworkPolicies at runtime.

4. **Default behavior without NetworkPolicies?**  
   All pod-to-pod traffic is allowed.

5. **Namespace-specific?**  
   Yes, policies are applied within namespaces.

6. **Troubleshooting NetworkPolicies?**  
   Check labels, namespaces, and active CNI plugin.

7. **DNS ports importance?**  
   Required for internal name resolution (TCP/UDP 53).

8. **Relation to Zero Trust?**  
   Enforces least privilege communication.

9. **Common mistake?**  
   Missing podSelector or incorrect label matching.

10. **Production best practice?**  
    Start with deny-all and incrementally allow required flows.
