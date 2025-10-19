# Troubleshooting Notes

## Issues Encountered and Fixes

1. **BadRequest: cannot unmarshal string into int32**
   - Cause: containerPort defined as string.
   - Fix: Use numeric value (8080) instead of quoted string.

2. **Service Invalid targetPort**
   - Cause: Wrong targetPort syntax.
   - Fix: Ensure targetPort is integer and matches containerPort.

3. **Application not available (browser)**
   - Cause: Accessed HTTPS instead of HTTP.
   - Fix: Use http:// route or patch TLS termination.

4. **Permission Errors (app.k8s.io)**
   - Cause: Developer role restriction.
   - Fix: Ignore warnings; deployment unaffected.
