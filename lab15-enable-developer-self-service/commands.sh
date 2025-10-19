# Commands Summary

# Verify Resource Quotas
oc get resourcequota -n le3arn2code-dev
oc describe resourcequota compute-deploy -n le3arn2code-dev

# Create RBAC Role & RoleBinding
oc apply -f my-viewer-role.yaml -n le3arn2code-dev
oc apply -f my-viewer-rolebinding.yaml -n le3arn2code-dev

# Verify RBAC
oc get role,rolebinding -n le3arn2code-dev

# View Network Policies
oc get networkpolicy -n le3arn2code-dev
oc describe networkpolicy allow-same-namespace -n le3arn2code-dev
