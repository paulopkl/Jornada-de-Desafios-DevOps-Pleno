resource "azurerm_resource_group" "rg" {
    name     = "${var.resource_group_name}-rg"
    location = "West US 2"

    tags = {
        environment = "Demo"
    }
}
