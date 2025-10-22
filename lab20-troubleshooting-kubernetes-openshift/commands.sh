# Commands Executed in Lab 20 - Troubleshooting Kubernetes/OpenShift

# Swap setup (safe memory)
sudo dd if=/dev/zero of=/swapfile bs=1M count=2048
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# Pod and Service Checks
oc get pods -A
oc get svc
oc get events --sort-by='.lastTimestamp'

# Log Analysis
oc logs log-test-pod
oc logs web-app-*
oc describe pod <pod-name>

# PVC Checks
oc get pvc
oc describe pvc working-pvc
oc logs storage-working-pod

# Memory/CPU Resource Troubleshooting
oc apply -f memory-limit-pod.yaml
oc apply -f fixed-memory-pod.yaml
oc apply -f cpu-limit-pod.yaml
oc apply -f fixed-cpu-limit-pod.yaml

# Final Verification
oc get pods -o wide
oc get endpoints web-service
