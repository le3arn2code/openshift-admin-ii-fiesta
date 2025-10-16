# Layman Explanation

This lab teaches you how to deploy one application to different environments (dev, staging, prod)
without rewriting YAML files. You write a single deployment and service template with placeholders
like ${ENVIRONMENT} and fill them automatically using environment files. 

Later, you can change replicas or image versions with one script. This method saves time,
keeps environments consistent, and prepares you for advanced tools like Helm or ArgoCD.
