# Interview Q&A: OpenShift Service Mesh (Istio-based)

**Q1. What is OpenShift Service Mesh?**  
A Red Hat-managed implementation of Istio, Kiali, and Jaeger providing observability, security, and traffic control for microservices.

**Q2. What is the role of Kiali?**  
Kiali provides visualization and management of service mesh topology, traffic flows, and configurations.

**Q3. How does mTLS improve security?**  
It enforces encrypted communication between services using mutual authentication.

**Q4. What is the function of Jaeger in the mesh?**  
Jaeger provides distributed tracing to track request flows across microservices.

**Q5. Why are DestinationRules and VirtualServices important?**  
They control routing behavior, retries, load balancing, and subset traffic routing between service versions.

**Q6. What’s the difference between PeerAuthentication and AuthorizationPolicy?**  
PeerAuthentication controls mTLS behavior; AuthorizationPolicy defines access control rules.

**Q7. What is a Gateway in Istio?**  
A Gateway defines how traffic enters or leaves the mesh (ingress/egress).

**Q8. What is circuit breaking and why is it useful?**  
Circuit breaking prevents cascading failures by stopping traffic to unhealthy services.

**Q9. How can you monitor mesh traffic?**  
Using Kiali, Grafana, and Jaeger integrated dashboards in OpenShift.

**Q10. How is Service Mesh integrated with CI/CD?**  
Through declarative YAML manifests in GitOps workflows using ArgoCD or Tekton pipelines.
