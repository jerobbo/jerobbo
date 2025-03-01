provider "azurerm" {
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id

  features {}
}



resource "azurerm_resource_group" "rg" {
  name     = "jerobbo-rg1"
  location = "uksouth" 
}

resource "azurerm_storage_account" "sa" {
  name                     = "jerobbosa1"
  resource_group_name       = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier               = "Standard"
  account_replication_type = "LRS" 

  tags = {
    environment = "Terraform"
  }
}

resource "azurerm_storage_container" "tfstate_container" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}
