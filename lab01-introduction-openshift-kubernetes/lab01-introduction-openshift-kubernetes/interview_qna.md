# Interview Q&A

**1️⃣ What is the role of CoreDNS in Kubernetes?**
> CoreDNS provides internal DNS resolution for services and pods.

**2️⃣ Why was your CoreDNS failing initially?**
> Due to wrong configuration (`pods verified`) and missing image pull access.

**3️⃣ How can you check Kubernetes cluster info?**
> Using `kubectl cluster-info`.

**4️⃣ What’s the difference between a Namespace and an OpenShift Project?**
> A project is an OpenShift-enhanced namespace with RBAC and quotas.

**5️⃣ What is the command to describe a pod?**
> `kubectl describe pod <pod-name>`

**6️⃣ How did you test DNS resolution in this lab?**
> Created a BusyBox pod and ran `nslookup kubernetes.default`.

**7️⃣ How can you check events for troubleshooting?**
> `kubectl get events --sort-by=.metadata.creationTimestamp`

**8️⃣ How do you verify the current Kubernetes context?**
> `kubectl config current-context`

**9️⃣ What are common reasons for a pod stuck in Pending?**
> Insufficient resources, incorrect image name, or lack of network access.

**🔟 How do you view ConfigMaps?**
> `kubectl get configmap <name> -o yaml`
