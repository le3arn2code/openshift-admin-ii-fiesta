# Interview Q&A

### 1. What is Tekton?
Tekton is an open-source framework for building CI/CD systems on Kubernetes. It defines reusable and declarative pipeline components.

### 2. How does OpenShift Pipelines relate to Tekton?
OpenShift Pipelines is Red Hat's managed distribution of Tekton, integrating it with OpenShift's security and RBAC model.

### 3. Why was Kaniko used instead of Buildah?
Kaniko builds container images inside unprivileged containers without requiring Docker daemon access, ideal for OpenShift’s restricted environment.

### 4. What is the role of `workspaces` in Tekton?
Workspaces allow sharing data (like source code) between Tasks within a Pipeline.

### 5. Why did the build initially fail?
The build failed due to OpenShift’s default non-root security context blocking write access to `/root` and `/kaniko` directories.

### 6. How was the permission issue resolved?
We added an `emptyDir` volume mounted at `/kaniko`, set `runAsUser: 1000`, and used the `--skip-chown=true` Kaniko flag.

### 7. What is the function of the `PipelineRun` resource?
A PipelineRun executes a defined pipeline by binding parameters, workspaces, and service accounts.

### 8. What is the difference between `Pipeline` and `Task`?
A Task is a single operation, while a Pipeline is a sequence of Tasks orchestrated to execute in order.

### 9. How can we monitor pipeline execution?
Using commands like `oc get pods`, `oc get taskruns`, and `oc logs -f` for real-time logs.

### 10. What was the final validation of success?
The successful build logs showing “Pushed image to internal registry” and all TaskRuns marked as `Succeeded`.
