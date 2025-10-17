# Troubleshooting Notes
1. **Error:** `.Values.serviceAccount.create` nil pointer  
   **Fix:** Removed `serviceaccount.yaml`.
2. **Error:** `.Values.ingress.enabled` nil pointer  
   **Fix:** Removed `ingress.yaml`.
3. **Error:** `.Values.httpRoute.enabled` nil pointer  
   **Fix:** Removed `httproute.yaml`.
4. **Error:** `.Values.autoscaling.enabled` nil pointer  
   **Fix:** Cleaned up deployment.yaml (used direct `replicas`).
5. **Error:** `.Values.httpRoute.enabled` in NOTES.txt  
   **Fix:** Removed `NOTES.txt`.
