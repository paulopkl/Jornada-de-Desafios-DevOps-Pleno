terraform {
  # required_version = ">= 0.14"

  required_providers {
    # azuredevops = {
    #   source  = "microsoft/azuredevops"
    #   version = ">= 0.1.0"
    # }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.71.0"
    }

    azuread = {
      source = "hashicorp/azuread"
      version = "2.41.0"
    }
  }

  # backend "remote" {
  #   organization = "value"
  #   workspaces {
  #     name = ""
  #   }
  # }
}

# provider "azuredevops" {
#   alias = "azuredevops2"
#   org_service_url = var.azure_devops["org_service_url"]
#   personal_access_token = var.azure_devops["personal_access_token"]
# }

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

provider "azuread" {
  # Configuration options
}
