# Commands Executed

oc whoami
oc get clusterversion
oc get clusterversion version -o yaml | tee ~/lab19-openshift-cluster-upgrades/clusterversion.yaml
oc get clusteroperators
oc describe clusteroperator authentication
oc get clusterversion version -o jsonpath='{.status.conditions[*].type}{"\n"}{.status.conditions[*].status}{"\n"}'
oc adm upgrade
oc get nodes -o wide
oc get pods -n le3arn2code-dev
oc get svc test-app-service -n le3arn2code-dev
oc get events --all-namespaces --sort-by=.lastTimestamp | grep -i warning | tail -20
oc get clusterversion version -o jsonpath='{.status.desired.version}{"\n"}'
oc get clusteroperators | grep -v "True.*False.*False"
oc get pods -n le3arn2code-dev
oc get svc test-app-service -n le3arn2code-dev
