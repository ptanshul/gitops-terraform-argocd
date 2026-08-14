terraform {
  backend "azurerm" {
    use_oidc             = true
    resource_group_name  = "developer-rg"
    storage_account_name = "tfstategitops20260813"
    container_name       = "tfstate"
    key                  = "gitops-terraform-argocd.tfstate"
  }
}