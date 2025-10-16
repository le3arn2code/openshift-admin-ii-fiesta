# Troubleshooting
1. **Error: unable to find kustomization.yaml**
   - Navigate to the correct directory.
2. **Error: Namespace not found**
   - Run: kubectl create namespace webapp-dev
3. **Error: Patches not applied**
   - Use kubectl kustomize overlays/dev to debug.
