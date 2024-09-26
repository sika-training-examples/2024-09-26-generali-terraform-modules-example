resource "azurerm_storage_account" "this" {
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.tags_common
}
