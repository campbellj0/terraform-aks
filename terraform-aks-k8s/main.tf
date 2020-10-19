provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x. 
    # If you are using version 1.x, the "features" block is not allowed.
    version = "~>2.0"
    use_msi = true
    features {}

    backend "azurerm" {
        storage_account_name = "cs7100300009100b5a2"
        container_name = "tfstate"
        key = 
    }
}

terraform {
    backend "azurerm" {}
}