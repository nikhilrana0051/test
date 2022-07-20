terraform {
    backend "azurerm" {
        resource_group_name  = "rg-storage-4-tf"
        storage_account_name = "storage4mytf"
        container_name       = "terraform4tfstate"
        key                  = "#################################"
    }

}