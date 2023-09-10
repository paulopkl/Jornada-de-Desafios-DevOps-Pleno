terraform {
  # required_version = ">= 0.14"

  required_providers {
    # azuredevops = {
    #   source  = "microsoft/azuredevops"
    #   version = "0.9.0"
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
#   # Configuration options
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
  # tenant_id = "0caec664-3cc9-4772-8f07-bbc7ea6c421b"
}

# resource "random_pet" "prefix" {}

# resource "azuredevops_project" "project" {
#   name        = "devops-infra"
#   description = "Project Description"
# }
