oc create serviceaccount privileged-sa
oc create serviceaccount moderate-sa
oc create serviceaccount restricted-sa
oc apply -f service-account-rolebinding.yaml
oc apply -f privileged-pod.yaml
oc apply -f moderate-pod.yaml
oc apply -f restricted-compliant-pod.yaml
oc get pods
oc get pod restricted-compliant-pod -o jsonpath='{.metadata.annotations.openshift\.io/scc}{"\n"}'
oc exec -it restricted-compliant-pod -- id
