#!/bin/bash
echo "Monitoring ConfigMap changes..."
echo "==============================="
while true; do
  echo
  echo "$(date): Checking configuration..."
  echo "ConfigMap database-config keys:"
  kubectl get configmap database-config -o jsonpath='{.data}' | jq 'keys' 2>/dev/null
  echo
  echo "Mounted app.properties version:"
  kubectl exec app-with-volume-config -- grep app.version /app/config/app.properties 2>/dev/null
  sleep 30
done
