# Azure AKS Deployment with Terraform & Pipelines

This project demonstrates Infrastructure as Code (IaC) for Azure and a CI/CD pipeline for deploying applications to Azure Kubernetes Service (AKS).

## Architecture

1.  **Infrastructure (Terraform)**:
    *   Resource Group
    *   AKS Cluster (Managed Kubernetes)
    *   Monitoring (optional logging config)

2.  **CI/CD (Azure DevOps)**:
    *   **Build**: Docker build and push to container registry
    *   **Deploy**: Kubernetes manifest application to AKS

## Prerequisites

*   Azure Subscription
*   Azure CLI (`az login`)
*   Terraform >= 1.0

## Quick Start: Infrastructure

### 1. Initialize Terraform

```bash
cd terraform
terraform init
```

### 2. Plan and Apply

```bash
terraform plan -out tfplan
terraform apply tfplan
```

### 3. Get Credentials

```bash
echo "$(terraform output -raw kube_config)" > ~/.kube/config
```

## Quick Start: CI/CD

1.  Create a new project in Azure DevOps.
2.  Import this repository.
3.  Create a Service Connection for Azure Subscription.
4.  Update `azure-pipelines.yml` variables:
    *   `azureSubscriptionEndpoint`
    *   `dockerRegistryServiceConnection`
5.  Run the pipeline.

## Project Structure

```
azure-aks-deployment/
├── terraform/          # IaC for infrastructure
├── azure-pipelines.yml # CI/CD definition
├── k8s/
│   └── manifests/      # Application K8s resources
└── scripts/            # Helper scripts
```

## Author

Ramchandra Chintala
