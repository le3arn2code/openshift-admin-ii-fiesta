#!/bin/bash
# Lab 17: OpenShift Pipelines (Tekton)
# Commands executed during the lab

# 1. Verify environment
oc project le3arn2code-dev

# 2. Delete and recreate Task
oc delete task buildah-build-push --ignore-not-found
oc apply -f ~/lab17-openshift-pipelines/tekton/task-buildah-build-push.yaml

# 3. Delete and reapply PipelineRun
oc delete pipelinerun build-deploy-run-sample --ignore-not-found
oc apply -f ~/lab17-openshift-pipelines/tekton/pipelinerun-sample.yaml

# 4. Monitor pipeline progress
oc get pods -n le3arn2code-dev
oc get taskruns --sort-by=.metadata.creationTimestamp
oc logs -f -n le3arn2code-dev $(oc get pods -n le3arn2code-dev -oname | grep build-image | tail -1) --all-containers --tail=100

# 5. Troubleshooting
# Common issues: missing scripts, permission errors, Kaniko /root access denied, chown denied.
# Final fix: Add writable /kaniko mount and --skip-chown flag to support OpenShift restricted SCC.

# 6. Final verification
oc get pipelineruns -n le3arn2code-dev
oc get pods -n le3arn2code-dev
