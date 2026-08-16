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
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-gitops-terraform-argocd-v12"
  location = "Central India"

  tags = {
    Environment = "GitOps"
    ManagedBy   = "Terraform"
    Project     = "ArgoCD-Terraform"
  }
}
