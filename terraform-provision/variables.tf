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

variable "az_location" {
  type = string
  description = "Azure Location"
  default = "eastus"
}

variable "container_name_registry" {
  type = string
  description = "Azure Kubernetes Service Cluster password"
  default = ""
}

variable "resource_group_name" {
  type = string
  description = "Azure Kubernetes Service Cluster password"
  default = "devops_infra_resource_group"
}

variable "aks_cluster_name" {
  type = string
  description = "Azure Kubernetes Cluster Name"
  default = "PauloAKSCluster"
}

variable "aks_cluster_name_dns" {
  type = string
  description = "DNS of Kubernetes Cluster"
  default = "PauloAKSCluster-dns"
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

variable "azure_devops" {
  description = "Configuration of Azure DevOps"
  type = object({
    personal_access_token = string
    org_service_url       = string
    project_description   = string
    project_name          = string
    visibility            = string
  })
  default = {
    personal_access_token = "****************************************************"
    org_service_url       = "https://dev.azure.com/< Project Name >"
    project_description   = "Project Description"
    project_name          = "devops-infra"
    visibility            = "private"
  }
}

variable "ado_github_repo" {
  type = string
  description = "Name of the repository in the format <GitHub Org>/<RepoName>"
  default = ""
}

variable "ado_pipeline_yaml_path" {
  type = string
  description = "Path to the yaml for the first pipeline"
  default = "/azure-pipelines.yml"
}
