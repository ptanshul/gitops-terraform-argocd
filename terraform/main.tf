terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-gitops-terraform-argocd-v9"
  location = "Central India"

  tags = {
    Environment = "GitOps"
    ManagedBy   = "Terraform"
    Project     = "ArgoCD-Terraform"
  }
}
