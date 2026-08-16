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
  oidc_token_file_path = "/var/run/secrets/azure/tokens/azure-identity-token"
  oidc_request_token = file("/var/run/secrets/azure/tokens/azure-identity-token")
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
