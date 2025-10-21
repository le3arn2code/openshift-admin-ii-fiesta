# Lab 17: OpenShift Pipelines (Tekton)

## Objective
This lab demonstrates creating and running a CI/CD pipeline using **Tekton Pipelines** on OpenShift. It includes cloning source code, building a container image with **Kaniko**, and deploying it to OpenShift.

### Key Components
- Tekton `Task` for image build and push using Kaniko (OpenShift-safe).
- Tekton `Pipeline` for fetching source, building the image, and deploying.
- Tekton `PipelineRun` to execute the complete workflow.

### Steps Overview
1. Create Tekton `Task` for image build (`buildah-build-push`).
2. Create the pipeline definition (`build-deploy-pipeline`).
3. Create and apply `PipelineRun` (`build-deploy-run-sample`).
4. Monitor pods, TaskRuns, and PipelineRuns.
5. Troubleshoot errors (permissions, file paths, etc.).
6. Validate successful image build and deployment.
