
#!/bin/bash
# Lab 07 – Expose Applications with OpenShift Routes

echo "=== Step 1: Create Deployment and Service ==="
cat <<'EOF' > webapp-deploy.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: webapp
spec:
  replicas: 1
  selector:
    matchLabels:
      app: webapp
  template:
    metadata:
      labels:
        app: webapp
    spec:
      containers:
      - name: webapp
        image: quay.io/redhattraining/hello-world-nginx:v1.0
        ports:
        - containerPort: 8080
---
apiVersion: v1
kind: Service
metadata:
  name: webapp
spec:
  selector:
    app: webapp
  ports:
  - port: 8080
    targetPort: 8080
EOF
kubectl apply -f webapp-deploy.yaml

echo "=== Step 2: Create Ingress with TLS ==="
cat <<'EOF' > webapp-ingress.yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: webapp-ingress
  annotations:
    nginx.ingress.kubernetes.io/ssl-redirect: "true"
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  tls:
  - hosts:
      - webapp.local
    secretName: webapp-tls
  rules:
  - host: webapp.local
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: webapp
            port:
              number: 8080
EOF
kubectl apply -f webapp-ingress.yaml

echo "=== Step 3: Create TLS Secret ==="
mkdir -p tls && cd tls
openssl req -x509 -nodes -days 365 -newkey rsa:2048   -keyout webapp.key -out webapp.crt -subj "/CN=webapp.local"
kubectl create secret tls webapp-tls --cert=webapp.crt --key=webapp.key
cd ..

echo "=== Step 4: Verify Ingress and Service ==="
kubectl get pods
kubectl get svc webapp
kubectl get ingress

echo "=== Step 5: Start Minikube Tunnel and Test ==="
minikube tunnel &
sleep 10
curl -I -H "Host: webapp.local" http://127.0.0.1
curl -k -H "Host: webapp.local" https://127.0.0.1
