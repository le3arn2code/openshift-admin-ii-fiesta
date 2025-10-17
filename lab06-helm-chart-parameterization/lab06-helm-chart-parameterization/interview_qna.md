
# Helm Parameterization – Interview Q&A

1. **What is Helm parameterization?**
   - Using `values.yaml` to inject dynamic configuration for different environments.

2. **How do you override values in Helm?**
   - Using `-f custom-values.yaml` or `--set key=value` flags.

3. **What is the difference between Chart.yaml and values.yaml?**
   - Chart.yaml defines metadata; values.yaml defines runtime configuration.

4. **How can Helm manage multiple environments?**
   - By using separate values files (dev, staging, prod) for overrides.

5. **How to debug a Helm chart template issue?**
   - Run `helm template --debug` to render and verify manifests.

6. **What is a Helm release?**
   - A deployed instance of a chart identified by a release name.

7. **How do you upgrade a Helm release?**
   - Use `helm upgrade <release> . -f values.yaml`.

8. **What are common errors during Helm deployments?**
   - `nil pointer`, `CrashLoopBackOff`, `socket permission`, or missing values.

9. **How can ConfigMaps be parameterized in Helm?**
   - By embedding dynamic keys under `.Values.configMap.data`.

10. **How to validate deployed values?**
    - Run `helm get values <release>` or inspect rendered templates with `helm template`.
