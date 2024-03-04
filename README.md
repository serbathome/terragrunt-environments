# GitHub Actions pipeline for terragrunt infrastructure provisioning
This project showcases a demonstration of Terraform deployment managed by GitHub Actions. I'm setting up infrastructure for a fictional application comprising an app service and a storage account.

The application is deployed across various environments:
- DEV (for ongoing development)
- TEST (for integration testing)
- UAT (for user acceptance testing)

The pipeline offers flexible options for provisioning services across all environments or targeting specific services in specific environments. Additionally, you can de-provision a previously deployed service.

Underlying Terraform modules are also fetched from GitHub.
