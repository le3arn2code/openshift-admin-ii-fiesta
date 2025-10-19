
# Troubleshooting Notes

## Issue 1: Helm repository unreachable
- **Cause:** DNS/CoreDNS issues and restricted internet.
- **Fix:** Used offline installation and manually created CRDs.

## Issue 2: CRD validation error
- **Cause:** Missing `items` key in schema.
- **Fix:** Extended schema with proper type definitions.

## Issue 3: Operator image pull failed
- **Cause:** Image not accessible.
- **Fix:** Built a local stub image with PostgreSQL base and loaded into Minikube.

## Issue 4: CoreDNS CrashLoopBackOff
- **Cause:** DNS forwarding errors.
- **Fix:** Modified Corefile to use external DNS, partial fix (non-blocking).
