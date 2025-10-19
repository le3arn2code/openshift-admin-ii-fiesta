# Interview Q&A

1. **What is an OpenShift Template?**
   A JSON or YAML definition that groups resources and parameters for reuse.

2. **How does parameter substitution work?**
   Parameters defined in the `parameters:` section are replaced at process time using `${PARAM_NAME}`.

3. **Difference between `oc create` and `oc process`?**
   `oc process` substitutes parameters; `oc create` actually applies the processed objects.

4. **How can templates improve consistency?**
   They standardize resource creation across environments.

5. **What command lists all available templates?**
   `oc get templates`

6. **How do you override parameters at deployment time?**
   With the `-p` flag, e.g. `oc process template -p APP_NAME=myapp`

7. **Why use `nginx-unprivileged` image?**
   Because sandbox disallows root containers; unprivileged image runs as non-root on port 8080.

8. **How do you expose the application?**
   By creating a `Route` object mapping external traffic to a `Service`.

9. **What caused the HTTPS 'Application not available' page?**
   Route used HTTPS but backend served HTTP. Solution: use HTTP or enable edge TLS.

10. **How do you clean up template resources?**
    `oc delete all -l app=<appname>`
