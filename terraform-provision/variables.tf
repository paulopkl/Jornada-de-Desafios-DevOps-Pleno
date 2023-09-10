variable "appId" {
  type = string
  description = "Azure Kubernetes Service Cluster service principal"
  default = ""
}

variable "password" {
  type = string
  description = "Azure Kubernetes Service Cluster password"
  default = ""
}

variable "ado_org_service_url" {
  type = string
  description = "Org service url for Azure DevOps"
  default = ""
}

variable "ado_github_repo" {
  type = string
  description = "Name of the repository in the format <GitHub Org>/<RepoName>"
  default = ""
}

variable "ado_pipeline_yaml_path" {
  type = string
  description = "Path to the yaml for the first pipeline"
  default = ""
}

variable "container_name_registry" {
  type = string
  description = "Azure Kubernetes Service Cluster password"
  default = ""
}

variable "resource_group_name" {
  type = string
  description = "Azure Kubernetes Service Cluster password"
  default = ""
}

variable "aks_cluster_name" {
  type = string
  description = "Azure Kubernetes Cluster Name"
  default = ""
}

variable "azure_application_name" {
  type = string
  description = "Azure Application Name"
  default = ""
}

variable "service_principal_pass_client_secret" {
  type = string
  description = "Azure Principal Service client secret"
  default = "123456789123456789123456789123456789123456789123456789"
}

# variable "password" {
#   type = string
#   description = "Azure Kubernetes Service Cluster password"
#   default = ""
# }
