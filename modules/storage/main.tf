resource "azurerm_resource_group" "this" {
  lifecycle { ignore_changes = [tags] }

  name     = "rg-${var.name}-storage"
  location = var.location
  tags     = var.tags_common
}

resource "azurerm_storage_account" "this" {
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
  name                     = var.name
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.tags_common
}
