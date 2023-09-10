data "azuread_client_config" "current" {}

# data "azuread_application" "app_name" {
#     display_name = var.azure_application_name
# }

resource "azuread_application" "app_name" {
  display_name = var.azure_application_name
  # homepage      = "http://example-app"
  # identifier_uris = ["http://example-app"]
  owners = [
    data.azuread_client_config.current.object_id
  ]
}

resource "azuread_service_principal" "service_principal_id" {
  depends_on = [
    azuread_application.app_name
  ]
  
  application_id = azuread_application.app_name.application_id
  app_role_assignment_required = false
  owners = [
    data.azuread_client_config.current.object_id
  ]
}

resource "azuread_service_principal_password" "service_principal_password" {
  service_principal_id = azuread_service_principal.service_principal_id.id
#   value               = var.service_principal_pass_client_secret  # Replace with your desired client secret
#   end_date            = "2024-01-01T01:02:03Z"  # Replace with the desired expiration date
}

resource "azurerm_kubernetes_cluster" "default" {
  depends_on = [
    azurerm_resource_group.rg,
    azuread_service_principal.service_principal_id,
    azuread_service_principal_password.service_principal_password
  ]

  name                = "${var.aks_cluster_name}-aks"
  dns_prefix          = "${var.aks_cluster_name}-k8s"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kubernetes_version  = "1.26.3"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = azuread_service_principal.service_principal_id.application_id
    client_secret = azuread_service_principal_password.service_principal_password.value
  }

  role_based_access_control_enabled = true

  tags = {
    environment = "Demo"
  }
}
