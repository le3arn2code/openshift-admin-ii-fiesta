
# Interview Q&A – Lab 14

**Q1:** What is a Kubernetes Operator?
**A1:** An Operator automates the management of complex applications using custom controllers and CRDs.

**Q2:** What role does a CRD play in an Operator?
**A2:** The CustomResourceDefinition defines new resource types (like PostgresCluster) that the operator can manage.

**Q3:** Why use PostgreSQL Operator instead of a manual deployment?
**A3:** It automates scaling, backup, and recovery processes, ensuring consistency.

**Q4:** How is a PostgresCluster different from a Deployment?
**A4:** It’s a custom resource managed by the operator that handles the lifecycle of PostgreSQL clusters.

**Q5:** What is pgBackRest used for?
**A5:** It provides reliable backup and restore functionality for PostgreSQL databases.

**Q6:** How does failover happen in PostgreSQL Operator?
**A6:** The operator monitors instances and automatically promotes a replica if the primary fails.

**Q7:** What happens if CRDs are missing?
**A7:** Kubernetes cannot recognize the custom resource types, resulting in `no matches for kind` errors.

**Q8:** What command verifies CRDs?
**A8:** `kubectl get crd | grep postgres`.

**Q9:** Can Operators work offline?
**A9:** Yes, by using local images and manifests, though automated updates will be unavailable.

**Q10:** Why are Operators important in production environments?
**A10:** They enable automation, self-healing, and consistency for stateful applications like databases.
