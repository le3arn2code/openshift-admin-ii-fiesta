
# Lab 06 – Helm Chart Parameterization

## Objectives
- Create and configure `values.yaml` files for multiple environments.
- Deploy parameterized applications using Helm charts.
- Test deployments with different configuration values.
- Troubleshoot and validate environment-specific settings.

## Key Steps
1. Create Helm chart structure.
2. Configure templates for Deployment, Service, ConfigMap, Ingress.
3. Define `values.yaml` for base + environment overrides.
4. Deploy using Helm for dev, staging, and prod namespaces.
5. Validate pods, services, and environment variables.

## Validation
Pods were successfully deployed across all environments:
- `dev` namespace – 1 pod running
- `staging` namespace – 2 pods running
- `prod` namespace – 3 pods pending (LoadBalancer limitation)

## Conclusion
You’ve completed Helm Chart Parameterization Lab successfully.
