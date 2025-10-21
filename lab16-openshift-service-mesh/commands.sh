#!/bin/bash
# Lab 16 Commands - OpenShift Service Mesh

# Create directory for lab
mkdir -p ~/lab16-openshift-service-mesh/code
cd ~/lab16-openshift-service-mesh/code

# Apply Bookinfo app
oc apply -f bookinfo-app.yaml -n le3arn2code-dev

# Verify Pods and Services
oc get pods -n le3arn2code-dev
oc get svc -n le3arn2code-dev

# Apply Gateway, PeerAuthentication, and DestinationRules
oc apply -f bookinfo-gateway.yaml -n le3arn2code-dev
oc apply -f peerauthentication.yaml -n le3arn2code-dev
oc apply -f destinationrule.yaml -n le3arn2code-dev

# Apply Reviews traffic routing
oc apply -f destinationrule-reviews.yaml -n le3arn2code-dev
oc apply -f virtualservice-reviews.yaml -n le3arn2code-dev

# Apply advanced configurations
oc apply -f envoyfilter-ratelimit.yaml -n le3arn2code-dev
oc apply -f authorization-policies.yaml -n le3arn2code-dev

# Validate resources
oc get pods -n le3arn2code-dev
oc get svc -n le3arn2code-dev
