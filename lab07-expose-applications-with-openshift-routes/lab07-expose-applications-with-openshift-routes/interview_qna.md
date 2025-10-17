
# Interview Q&A – OpenShift Routes and Ingress

**1. What is an OpenShift Route?**  
A Route exposes a service externally, mapping a DNS hostname to a service inside the cluster via the router.

**2. How does it differ from a Kubernetes Ingress?**  
Ingress is a Kubernetes-native API; Route is OpenShift’s extension with additional TLS and policy controls.

**3. What are the three types of TLS termination in OpenShift?**  
Edge, Passthrough, and Re-encryption.

**4. Which type of TLS termination did we implement here?**  
Edge termination – TLS is terminated at the router/ingress, traffic to pods is HTTP.

**5. How can you force HTTP→HTTPS redirection?**  
Using annotation `nginx.ingress.kubernetes.io/ssl-redirect: "true"` or `--insecure-policy=Redirect` for Routes.

**6. How can you test certificate validity?**  
Use `openssl s_client -connect <host>:443 -servername <host>`.

**7. What command lists available routes in OpenShift?**  
`oc get routes`

**8. What’s the equivalent command in Kubernetes?**  
`kubectl get ingress`

**9. Why is “minikube tunnel” required?**  
It maps LoadBalancer services to a routable IP on the host.

**10. What are some security best practices for Routes?**  
Use valid certificates, enable HSTS, restrict IPs with annotations, and enforce TLS 1.2+.
