
#!/bin/bash
# === Lab 14 Commands ===

# 1. Check cluster status
kubectl cluster-info
kubectl get nodes
kubectl get pods -n kube-system

# 2. Create namespace
kubectl create namespace postgres-operator

# 3. Install PostgreSQL Operator (offline method)
kubectl apply -f code/postgres-operator-install.yaml

# 4. Apply CRDs
kubectl apply -f code/postgres-operator-crds.yaml

# 5. Deploy PostgreSQL cluster
kubectl apply -f code/postgres-cluster.yaml

# 6. Verify CRD and cluster
kubectl get crd | grep postgres
kubectl get postgrescluster -A
kubectl describe postgrescluster my-postgres-cluster -n postgres-operator
