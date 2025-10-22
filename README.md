# OpenShift Admin II Fiesta

## Overview
This repository — **OpenShift Admin II Fiesta** — contains a comprehensive collection of 20 fully documented and validated OpenShift/Kubernetes labs, aligned with advanced administrator-level objectives.  
Each lab is packaged with complete configuration files, screenshots, troubleshooting documentation, and real-world interview Q&A for practical learning.

---

## 📘 Labs Included

| Lab No. | Title | Status |
|----------|---------------------------------------------|----------|
| 01 | Introduction to OpenShift and Kubernetes | ✅ Completed |
| 02 | Understanding Resource Manifests | ✅ Completed |
| 03 | Parameterizing Resource Manifests | ✅ Completed |
| 04 | Using Kustomize for Overlay Management | ✅ Completed |
| 05 | Introduction to Helm Charts | ✅ Completed |
| 06 | Helm Chart Parameterization | ✅ Completed |
| 07 | Expose Applications with OpenShift Routes | ✅ Completed |
| 08 | Exposing Non-HTTP Applications | ✅ Completed |
| 09 | Working with ConfigMaps | ✅ Completed |
| 10 | Managing Secrets in Kubernetes | ✅ Completed |
| 11 | Applying Network Policies | ✅ Completed |
| 12 | Role-Based Access Control (RBAC) | ✅ Completed |
| 13 | Using OpenShift Templates | ✅ Completed |
| 14 | Automating Application Deployment with Operators | ✅ Completed |
| 15 | Enable Developer Self-Service | ✅ Completed |
| 16 | OpenShift Service Mesh | ✅ Completed |
| 17 | OpenShift Pipelines (Tekton) | ✅ Completed |
| 18 | Securing Applications with Security Context Constraints (SCC) | ✅ Completed |
| 19 | OpenShift Cluster Upgrades | ✅ Completed |
| 20 | Troubleshooting Kubernetes/OpenShift | ✅ Completed |

---

## 🧩 Repository Structure

Each lab follows a consistent folder structure for easy navigation and version control:

```
labXX-<lab-title>/
├── README.md                # Full technical summary & validation table
├── commands.sh              # All CLI commands executed (oc/kubectl/yaml)
├── troubleshooting.md        # Issues faced & solutions applied
├── interview_qna.md          # 10 real-world OpenShift Q&A per lab
├── code/                    # YAMLs, scripts, and configs used
└── screenshots/             # Real screenshots captured during execution
```

---

## 🎯 Learning Objectives

Through these labs, you will gain expertise in:

- Kubernetes and OpenShift cluster management  
- Helm and Kustomize for configuration management  
- Secure application deployment using RBAC and SCC  
- Advanced networking, routing, and service mesh integration  
- CI/CD automation with Tekton and OpenShift Pipelines  
- Cluster upgrades and troubleshooting methodologies  
- Operators and self-service provisioning  

---

## 🧠 Interview & Practical Readiness

Each lab includes a **`interview_qna.md`** file containing 10 in-depth, scenario-based Q&A covering:
- Real-world OpenShift administration use cases  
- Troubleshooting and cluster recovery  
- Security contexts and SCC management  
- Helm, Operators, and Pipeline optimization  
- Disaster recovery and upgrade strategies  

---

## 🧑‍💻 Author

**Repository Owner:** [le3arn2code](https://github.com/le3arn2code)  
**Project Title:** OpenShift Admin II Fiesta  
**Description:** A professional-level hands-on OpenShift & Kubernetes lab collection designed for administrators, DevOps engineers, and cloud practitioners.  
**License:** MIT License  

---

## 🏁 How to Use

Clone the repository:

```bash
git clone https://github.com/le3arn2code/openshift-admin-ii-fiesta.git
cd openshift-admin-ii-fiesta
```

Explore each lab in order to build cumulative expertise in OpenShift administration.  
Each lab can be executed independently on Red Hat OpenShift Sandbox or local cluster environments.

---

## 🧾 Validation Summary

All labs have been verified on:
- **Platform:** Red Hat OpenShift 4.12+  
- **CLI Tools:** oc, kubectl, helm, kustomize, tekton  
- **Environment:** Al-Nafi Cloud / RHEL / Fedora / Ubuntu  
- **Status:** ✅ All 20 Labs Successfully Completed

---

> ⚙️ Maintained and continuously improved by **le3arn2code** to support OpenShift Administrator II learning tracks and real-world operational readiness.
