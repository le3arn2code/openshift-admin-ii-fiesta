#!/bin/bash
# Lab 17: OpenShift Pipelines (Tekton)

# Create project
oc new-project pipeline-demo

# Apply all Tekton resources
oc apply -f tekton/

# Create registry secret (only needed in real cluster)
oc create secret docker-registry pipeline-registry-secret \
  --docker-server=image-registry.openshift-image-registry.svc:5000 \
  --docker-username=pipeline \
  --docker-password=$(oc whoami -t) \
  --docker-email=pipeline@example.com

oc secrets link pipeline pipeline-registry-secret
oc policy add-role-to-user edit system:serviceaccount:pipeline-demo:pipeline

# Run sample pipeline
oc apply -f tekton/pipelinerun-sample.yaml

# Watch progress
oc get pipelinerun -w
