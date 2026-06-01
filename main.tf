resource "azurerm_resource_group" "rg" {
  name     = "satya-rg"
  location = "West Europe"
}
resource "azurerm_resource_group" "rg" {
  name     = "satya-rg1"
  location = "West Europe"
}
resource "azurerm_resource_group" "rg3" {
  name     = "satya-rg3"
  location = "West Europe"
}

resource "azurerm_storage_account" "stg" {
    depends_on = [ azurerm_resource_group.rg ]
  name                     = "satya2026stgacc"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}