# Lab 20: Troubleshooting Kubernetes/OpenShift

## Overview
This lab demonstrates advanced troubleshooting across OpenShift and Kubernetes environments.  
It covers diagnostics for pod networking, persistent storage, resource limits (CPU/Memory), and event analysis.

## Validation Summary

| Subtask | Description | Status | Screenshot |
|----------|--------------|---------|-------------|
| 2.1 Networking | DNS resolution & service endpoint verified | ✅ | screenshot1.png |
| 2.2 Storage | PVC bound, data persisted successfully | ✅ | a15235e6-8d1b-417d-8734-9f4e70b48d4f.png |
| 2.3 Memory | Resource limits simulated safely | ✅ | ef182ab6-0bb8-4f13-9c2a-ee9538f770d7.png |
| 2.4 CPU | Throttling and optimization verified | ✅ | e3ea6258-3d0c-45c6-ba97-e3db6f946afa.png |
| 3. Fix Validation | CrashLoopBackOff & PVC errors fixed | ✅ | 5a7fcfbb-393e-4292-be98-f525c7edb4fc.png |

## Commands Used
See `commands.sh` for full session commands.

## Troubleshooting Highlights
- **CrashLoopBackOff** resolved by adding init container with correct permissions.
- **PVC Binding** fixed via proper storage class `gp3` and `ReadWriteOnce` access mode.
- **DNS Failures** resolved by removing restrictive NetworkPolicy.
- **Resource Simulation** verified without host performance degradation.

## Conclusion
You practiced:
- Pod, service, and PVC diagnostics
- Analyzing logs/events
- Fixing broken deployments
- Safe memory/CPU stress simulation

These steps mirror real-world troubleshooting for OpenShift Admin II (EX280).
