resource "azurerm_container_registry" "acr" {
    depends_on = [
      azurerm_resource_group.rg
    ]

    name                     = var.container_name_registry
    resource_group_name      = azurerm_resource_group.rg.name
    location                 = azurerm_resource_group.rg.location
    sku                      = "Basic"
    admin_enabled            = true
}

# resource "azurerm_role_assignment" "acr" {
#   scope                = azurerm_container_registry.acr.id
#   role_definition_name = "AcrPush"
#   principal_id         = data.azuread_client_config.current.client_id
# }
