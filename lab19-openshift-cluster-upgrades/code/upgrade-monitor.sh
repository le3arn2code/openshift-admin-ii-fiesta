#!/bin/bash
echo "=== OpenShift Upgrade Monitor ==="
echo "Started at $(date)"
echo "================================="
while true; do
  echo "--- $(date) ---"
  echo "Cluster Version:"
  oc get clusterversion
  echo "Degraded Operators:"
  oc get clusteroperators | grep -v "True.*False.*False"
  echo "Node Status:"
  oc get nodes -o wide 2>/dev/null || echo "Node access restricted"
  echo "Test App Pods:"
  oc get pods -n le3arn2code-dev | grep test-app
  echo "-------------------------------"
  sleep 60
done
