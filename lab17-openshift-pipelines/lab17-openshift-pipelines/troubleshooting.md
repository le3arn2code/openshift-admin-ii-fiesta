# Troubleshooting

### Issue 1: Missing script execution error
**Error:** `fork/exec /tekton/scripts/script-0-xxxx: no such file or directory`  
**Cause:** Tekton used a `script:` block, which failed under restricted permissions.  
**Fix:** Replaced script with `command:` and `args:` section in `task-buildah-build-push.yaml`.

### Issue 2: Permission denied on /root
**Error:** `unable to create destination directory: mkdir /root: permission denied`  
**Cause:** OpenShift runs pods as random non-root users.  
**Fix:** Set `runAsNonRoot: true` and `runAsUser: 1000` in the step security context.

### Issue 3: Kaniko cannot chown files
**Error:** `error resolving dockerfile path: copying dockerfile: chown /kaniko/Dockerfile: operation not permitted`  
**Cause:** OpenShift prevented file ownership change in `/kaniko` directory.  
**Fix:** Added writable emptyDir volume mounted at `/kaniko` and used `--skip-chown=true` flag.

### Issue 4: Unsuccessful credential copy
**Warning:** `.docker` copy failed due to restricted /root access.  
**Fix:** Set `DOCKER_CONFIG=/tekton/home/.docker/` and `HOME=/tekton/home` environment variables.

### Final Fix Summary
- Replaced `script` with `command/args`.
- Added `/kaniko` emptyDir volume.
- Included `--skip-chown=true`.
- Enforced non-root user context.
