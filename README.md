# GitHub actions pipeline for terragrunt infrastructure provisioning
This is demo of terragrunt deployment managed by GitHub actions. I'm building infrastructure for a fictional application which consists of an app service and storage account.

This application is deployed in several environments:
- DEV (for ongoing development)
- TEST (for intergration testing)
- UAT (for user acceptance testing)

Pipeline is providing flexible optiong for provisioning from all services in all environments to specific service in specific environment. You can also de-provision a previsously deployed service.

Underliyng terraform modules are pulled from GitHub as well.
