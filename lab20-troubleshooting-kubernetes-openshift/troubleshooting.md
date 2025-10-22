# Troubleshooting Notes

## 1. CrashLoopBackOff (Nginx)
**Error:** mkdir() "/var/cache/nginx/client_temp" failed (13: Permission denied)  
**Fix:** Added initContainer with 'chmod -R 777 /var/cache/nginx'.

## 2. PVC Pending / Unbound
**Error:** `persistentvolumeclaim "non-existent-pvc" not found`  
**Fix:** Created proper PVC (gp3 class) and verified binding to PV.

## 3. DNS NXDOMAIN / Connection Refused
**Error:** `nslookup web-service` → NXDOMAIN  
**Fix:** Removed restrictive `deny-all` NetworkPolicy and verified endpoints.

## 4. Memory Issues
**Error:** Pod OOMKilled or stuck in Pending  
**Fix:** Reduced allocation to 60MB & verified safe execution.

## 5. CPU Limits
**Observation:** Safe stress simulation verified using 2-core VM, CPU optimization successful.

---
All fixes validated with live pod logs and resource states.
