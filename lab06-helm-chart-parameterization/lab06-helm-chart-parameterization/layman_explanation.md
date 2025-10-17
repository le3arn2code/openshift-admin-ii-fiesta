
# Helm Lab in Simple Terms

This lab teaches how to make a single Helm chart flexible enough to deploy
the same app in different environments (dev, staging, prod) just by changing values.
Instead of editing YAMLs manually, you keep everything clean and reusable.

Helm uses `values.yaml` to control:
- How many replicas run
- Which Docker image tag to use
- What type of Service (ClusterIP/NodePort/LoadBalancer)
- Environment variables like LOG_LEVEL or DEBUG_MODE

By mastering this, you can deploy apps faster and maintain cleaner configurations across all environments.
