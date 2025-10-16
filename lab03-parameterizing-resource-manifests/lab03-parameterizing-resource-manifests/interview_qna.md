# Interview Q&A – Lab 03

1. **What is parameterization in Kubernetes?**
   It means using variables instead of hard-coded values so the same template can deploy to multiple environments.

2. **Why use envsubst instead of editing YAML manually?**
   It automates substitution of variables defined in .env files, ensuring consistency.

3. **How do you prevent configuration drift?**
   By keeping one template and multiple environment files under version control.

4. **Difference between Helm, Kustomize, and envsubst?**
   - Helm: full packaging tool with templating and versioning
   - Kustomize: overlay-based customization
   - envsubst: lightweight variable replacement

5. **What command dynamically updates replicas?**
   `kubectl scale deployment webapp-dev --replicas=N`

6. **What command updates image tags dynamically?**
   `kubectl set image deployment/webapp-dev webapp=nginx:1.22-alpine`

7. **How to monitor deployments?**
   Using `kubectl get deployments -l app=webapp -o wide` or a monitoring script.

8. **Why use ConfigMaps in advanced parameterization?**
   To separate configuration data from container images.

9. **What does 'set -a' and 'source' do in deploy.sh?**
   It exports all variables from the environment file before running `envsubst`.

10. **How does this lab prepare for CI/CD integration?**
    Scripts and templates can plug directly into Jenkins or ArgoCD pipelines for automated multi-environment deployments.
