module "azure_devops" {
    source = "./modules/azure-devops"

    # providers = {
    #     azuredevops = azuredevops.azuredevops2
    # }

    org_service_url = var.azure_devops["org_service_url"]
    personal_access_token = var.azure_devops["personal_access_token"]
    project_name = var.azure_devops["project_name"]
    project_description = var.azure_devops["project_description"]
    visibility = var.azure_devops["visibility"]
}
