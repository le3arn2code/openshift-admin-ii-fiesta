# Helm Interview Q&A

**Q1. What is Helm in Kubernetes?**  
A package manager for Kubernetes applications, using Charts for templated deployments.

**Q2. Difference between Helm 2 and Helm 3?**  
Helm 3 removes Tiller; uses direct Kubernetes API access and RBAC compatibility.

**Q3. What are Helm Charts?**  
Collections of YAML templates that define Kubernetes resources and values.

**Q4. How to override default values in Helm?**  
Using `-f custom-values.yaml` or `--set key=value` during install/upgrade.

**Q5. How do Helm releases work?**  
Each deployment instance of a chart is tracked as a versioned release.

**Q6. How can you rollback a Helm deployment?**  
Run `helm rollback <release> <revision>`.

**Q7. What is 'helm lint'?**  
A command to validate chart structure and syntax.

**Q8. What is the purpose of `values.yaml`?**  
Holds default configuration values for chart templates.

**Q9. How to list Helm releases?**  
`helm list` or `helm list --all-namespaces`.

**Q10. Why use Helm over raw manifests?**  
Simplifies versioning, reuse, templating, and lifecycle management.
