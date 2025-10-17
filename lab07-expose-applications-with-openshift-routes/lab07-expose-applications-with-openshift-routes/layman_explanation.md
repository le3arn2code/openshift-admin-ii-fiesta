
# Layman Explanation – Exposing Applications with Routes

Think of Kubernetes pods as people inside a secured building.  
A **Service** is like the building receptionist who knows where everyone sits.  
But outsiders can’t reach inside directly — that’s where a **Route (Ingress)** comes in.

The **Route** acts like a public door with a signboard (hostname).  
When someone types `https://webapp.local`, the door (Ingress Controller) receives it, checks its key (TLS certificate), and redirects them safely to the right person (pod).

In this lab, we created:
- A simple web server (nginx)
- A Service to expose it internally
- A Route (Ingress) to make it reachable securely with HTTPS

So you learned how to open that "secure door" safely — the foundation of exposing apps on OpenShift.
