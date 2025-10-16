# Lab 03 – Parameterizing Resource Manifests

## Objectives
- Create parameterized Kubernetes manifests using environment variables
- Apply different configuration parameters for development, staging, and production
- Dynamically modify replica counts and container image tags
- Implement advanced ConfigMap parameterization

## Steps Overview
1. Create directory structure
2. Build parameterized templates
3. Define environment variable files
4. Deploy across environments
5. Dynamically update replicas and images
6. Monitor all deployments
7. Advanced: Add ConfigMap templating
8. Validate and clean up

## Validation Checklist
```bash
kubectl get deployments -l app=webapp
kubectl get services -l app=webapp
```

## Conclusion
This lab demonstrates reusable, environment‑specific deployments in Kubernetes using environment substitution.
