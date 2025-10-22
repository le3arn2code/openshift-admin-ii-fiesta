# Lab 19: OpenShift Cluster Upgrades

## Objective
This lab demonstrates how to perform and validate an OpenShift cluster upgrade, verify cluster health, back up critical resources, and deploy a test application for post-upgrade validation.

## Tasks Summary
1. Verified current OpenShift cluster version and operators.
2. Backed up cluster and namespace-level configurations.
3. Attempted upgrade check (Upgradeable=False due to incompatible operators).
4. Created and deployed test application (`test-app`) in `le3arn2code-dev` namespace.
5. Validated pod status, service availability, and cluster health using a monitoring script.

## Post-Upgrade Validation
- Cluster Version: **4.19.15**
- Upgradeable: **False** (Incompatible Operators Installed)
- All cluster operators: **Available, Healthy**
- Application `test-app`: **Stable and Running**
- Service: **Reachable within cluster on port 8080**
- No degraded operators or progressing components

