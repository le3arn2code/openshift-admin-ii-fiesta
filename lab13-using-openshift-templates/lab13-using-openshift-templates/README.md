# Lab 13 – Using OpenShift Templates

## 🎯 Objectives
By the end of this lab, you will be able to:
- Understand the concept and structure of OpenShift templates.
- Create parameterized templates for reusable application deployments.
- Instantiate templates with different parameter values.
- Deploy and expose an application using a custom template.
- Troubleshoot common template‑related issues.

## 🧩 Environment
- Project: `le3arn2code-dev`
- Cluster: `api.rm1.0a51.p1.openshiftapps.com`
- Template name: `web-app-template`
- Image: `nginxinc/nginx-unprivileged:latest`

## 🧠 Key Steps
1. **Created Template**
   ```bash
   oc create -f web-app-template.yaml
   oc get templates
   oc describe template web-app-template
   ```
2. **Processed and Deployed**
   ```bash
   oc process web-app-template | oc create -f -
   oc get all -l app=web-app
   ```
3. **Verified Access**
   ```bash
   oc get route web-app -o jsonpath='{.spec.host}{"\n"}'
   curl http://web-app-le3arn2code-dev.apps.rm1.0a51.p1.openshiftapps.com
   ```

## 🌐 Route URL
http://web-app-le3arn2code-dev.apps.rm1.0a51.p1.openshiftapps.com

## 🧾 Results
- Pod running and serving requests.
- Route accessible publicly.
- Nginx welcome page visible both in CLI and browser.

## 🛠 Troubleshooting Summary
| Issue | Cause | Fix |
|-------|--------|-----|
| `unmarshal string into int32` | Port type mismatch | Use integer for containerPort |
| `Invalid value: "8080": must contain at least one letter` | Wrong targetPort type | Define as int |
| `Application not available` | HTTPS mismatch | Access via HTTP (or patch TLS) |

## ✅ Outcome
All tasks successfully completed. Application deployed via reusable OpenShift template and verified from public route.
