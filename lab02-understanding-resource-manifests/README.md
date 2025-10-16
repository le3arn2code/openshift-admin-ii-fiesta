# Lab 02 – Understanding Resource Manifests

## 🎯 Objectives
- Understand YAML manifest structure
- Create and validate Deployment manifests
- Apply manifests using `kubectl`/`oc`
- Inspect rollout and analyze logs
- Link manifests with real-world OpenShift operations

---

## 🧩 Practical Insights & Real‑World Usage
Declarative manifests like this form the **core of GitOps pipelines** using Jenkins, ArgoCD, or Tekton.
They define the desired application state and ensure reproducibility from **Dev → QA → Prod**.

Manifests enable:
- Rollback-safe updates (`oc rollout undo`)
- Policy enforcement via OPA/Gatekeeper
- Version-controlled IaC via Git

💡 *Tip:* “Manifests are infrastructure code—treat them like software.”

---

## 🧹 Cleanup Commands
```bash
oc delete deployment nginx-deployment
rm -rf ~/lab2-manifests
```

## 📸 Screenshots
| Step | Proof |
|------|-------|
| Deployment Created | ![s1](screenshots/screenshot1.png) |
| Rollout Status | ![s2](screenshots/screenshot2.png) |
| HTML Output | ![s3](screenshots/screenshot3.png) |
| JSON Status | ![s4](screenshots/screenshot4.png) |
